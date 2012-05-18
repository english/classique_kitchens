# encoding: utf-8

class StormerKitchen < Kitchen
  # TODO: extract this into presenter/exhibit
  def self.type
    'störmer küchen'
  end

  def self.active_nav_item
    'störmer küchens'
  end

  def self.description
    RDiscount.new(<<DESC).to_html
Modern and timeless kitchens...

offer many possibilities of design arranged in a defined space. Superior quality and the latest design trends are accentuated by innovative solutions and the highest quality materials. Our desire is to design a kitchen which is perfect both aesthetically and functionally, with attention paid to the smallest of details.
DESC
  end
end
