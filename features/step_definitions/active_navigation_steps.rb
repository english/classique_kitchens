# encoding: utf-8

Given /^I am on the "(.*?)" page$/ do |page|
  path = case page
         when 'Home' then '/'
         when 'störmer küchen' then '/stormer_kitchens'
         when 'Hand Made Furniture' then '/hand_made_furniture'
         when 'Contact' then '/contact'
         end

  visit path
end

When /^I visit the (.*?) page$/ do |page|
  steps %{
    Given I am on the "#{page}" page
  }
end

Then /^the menu item (.*?) should be active$/ do |menu_item|
  within '.nav .active' do
    page.should have_content(menu_item)
  end
end
