require 'ostruct'

class PageController < ApplicationController
  def home
    @title = 'Classique Kitchens | Kitchens and Appliances Cumbria'

    @slides = Kitchen.featured.each_with_index.map { |kitchen, index|
      OpenStruct.new(
        classes: (index == 0 ? 'item active' : 'item'),
        image: kitchen.image,
        alt: kitchen.name
      )
    }

    @blurb = RDiscount.new(Company.blurb).to_html
  end
end
