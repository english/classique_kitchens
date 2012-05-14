FactoryGirl.define do
  factory :kitchen do
    name  'Test Kitchen'
    image File.new('spec/fixtures/sample_image.jpg')
  end

  factory :stormer_kitchen do
    name 'Test Stormer Kitchen'
    image File.new('spec/fixtures/sample_image.jpg')
  end

  factory :hand_made_kitchen do
    name 'Test Hand Made Kitchen'
    image File.new('spec/fixtures/sample_image.jpg')
  end
end
