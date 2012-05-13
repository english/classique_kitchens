FactoryGirl.define do
  factory :kitchen do
    name  'Test Kitchen'
    image File.new('spec/fixtures/sample_image.jpg')

    factory :stormer_kitchen do
      name 'Test Stormer Kitchen'
      type 'StormerKitchen'
    end

    factory :hand_made_kitchen do
      name 'Test Hand Made Kitchen'
      type 'HandMadeKitchen'
    end
  end
end
