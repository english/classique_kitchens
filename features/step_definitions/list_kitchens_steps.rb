def sample_iamge
  path = File.expand_path('../../spec/fixtures/sample_image.jpg', File.dirname(__FILE__))
  File.new(path)
end

Given /^the following kitchens$/ do |kitchens_table|
  kitchens_table.hashes.each do |kitchen_row|
    type = kitchen_row['type'].gsub(' ', '') + 'Kitchen'
    name = kitchen_row['name']
    Kitchen.create!(name: name, type: type, image: sample_image)
  end
end

When /^I click on the "(.*?)" link in the navbar$/ do |link|
  visit '/'

  within '.nav' do
    click_link link
  end
end

Then /^I should see these kitchens$/ do |kitchens_table|
  kitchens_table.hashes.each do |kitchen_row|
    within '.kitchens' do
      page.should have_selector "img[alt=#{kitchen_row['name']}]"
    end
  end
end

Then /^not these kitchens$/ do |kitchens_table|
  kitchens_table.hashes.each do |kitchen_row|
    within '.kitchens' do
      page.should_not have_selector "img[alt=#{kitchen_row['name']}]"
    end
  end
end
