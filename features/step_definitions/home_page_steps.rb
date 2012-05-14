def sample_image
  File.new 'test/fixtures/sample_image.jpg'
end

Given /^Some featured kitchens$/ do
  @slides = 3.times.map {|i| Kitchen.create! name: "Kitchen #{i}",
    image: sample_image, featured: true }
end

When /^I go to the home page$/ do
  visit root_path
end

Then /^I should see the company name and tagline in the header$/ do
  within 'header' do
    page.should have_content 'Classique Kitchens'
    page.should have_content 'Kitchens and Appliances Cumbria'
  end
end

Then /^I should see a slideshow of featured kitchens$/ do
  within 'body .slideshow' do
    @slides.each do |slide|
      page.should have_css "img[alt='#{slide.name}']"
      page.should have_css "img[src='#{slide.image.url}']"
    end
  end
end

Then /^I should see the following blurb about the company:$/ do |blurb|
  within 'body .blurb' do
    page.should have_content blurb
  end
end

Then /^I should see the company phone number:$/ do |phone_number|
  within 'header' do
    page.should(have_content(phone_number))
  end
end
