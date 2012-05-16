Given /^I am on the contact page$/ do
  visit '/contact'
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, content|
  within 'form.contact-form' do
    fill_in field, with: content
  end
end

When /^I press "(.*?)"$/ do |button|
  within 'form.contact-form' do
    click_on button
  end
end

Then /^I should see a success message$/ do
  within '.content' do
    page.should have_content('success')
  end
end
