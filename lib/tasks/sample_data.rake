require_relative '../../config/environment'
require_relative '../../app/models/kitchen'

task :sample_data => :environment do
  dir = File.expand_path('../../db/seed', File.dirname(__FILE__))

  Dir["#{dir}/stormer/*.jpg"].each do |image|
    name = "Stormer " + File.basename(image).humanize
    StormerKitchen.create!(name: name, image: File.new(image))
  end

  Dir["#{dir}/hand_made/*.jpg"].each do |image|
    name = "Hand Made " + File.basename(image).humanize
    HandMadeKitchen.create!(name: name, image: File.new(image))
  end
end
