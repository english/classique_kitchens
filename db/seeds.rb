# clear out db
Kitchen.delete_all
Feature.delete_all

dir = File.expand_path('seed', File.dirname(__FILE__))

Dir["#{dir}/stormer/*.jpg"].each do |image|
  name = "Stormer " + File.basename(image, '.jpg').humanize.titleize
  StormerKitchen.create(name: name, image: File.new(image))
end

Dir["#{dir}/hand_made/*.jpg"].each do |image|
  name = "Hand Made " + File.basename(image, '.jpg').humanize.titleize
  HandMadeKitchen.create(name: name, image: File.new(image))
end

StormerKitchen.first.update_attribute(:featured, true)
StormerKitchen.last.update_attribute(:featured, true)
HandMadeKitchen.last.update_attribute(:featured, true)

Dir["#{dir}/features/*.jpg"].each do |image_path|
  curr_dir = File.dirname(image_path)
  content_file = File.join(curr_dir, File.basename(image_path, '.jpg') + '.md')

  content = File.read(content_file)
  image = File.new(image_path)

  Feature.create(content: content, image: image)
end
