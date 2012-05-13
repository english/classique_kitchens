class PageController < ApplicationController
  def home
    @title = 'Classique Kitchens | Kitchens and Appliances Cumbria'
    @slides = Kitchen.featured
  end
end
