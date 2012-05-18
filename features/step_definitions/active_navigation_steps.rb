Given /^I am on the "(.*?)" page$/ do |page|
  path = case page
         when 'Home' then '/'
         when 'Contact' then '/contact'
         when 'Kitchens' then '/kitchens'
         when 'Stormer Kitchens' then '/kitchens?type=Stormer'
         when 'Hand Made Kitchens' then '/kitchens?type=HandMade'
         else '/'
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
