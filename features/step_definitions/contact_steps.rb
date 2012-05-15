Given /^I am on the contact page$/ do
  visit '/'
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, content|
  within 'form.contact' do
    fill_in field, with: content
  end
end

When /^I press "(.*?)"$/ do |button|
  within form.contact do
    click_on button
  end
end

Then /^I should see a success message$/ do
  page.should have_content('success')
end
