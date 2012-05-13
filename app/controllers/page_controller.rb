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

    @blurb = RDiscount.new(<<BLURB).to_html
Classique Kitchens offer infinite scope for kitchen design and layout,
whether you own a mansion or space is at a premium we think that you'll
find your ideal kitchen within our website.

There are a wide range of units and accessories with something to suit all.
Whether you require a new fully fitted kitchen, or want to modernize your
current one by simply adding new doors, handles, worktops etc.
BLURB
  end
end
