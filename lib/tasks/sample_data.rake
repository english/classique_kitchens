require_relative '../../config/environment'
require_relative '../../app/models/kitchen'

task :sample_data => :environment do
  dir = File.expand_path('../../db/seed', File.dirname(__FILE__))

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
end
