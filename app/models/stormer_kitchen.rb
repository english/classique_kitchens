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

  def self.final_message
    RDiscount.new(<<MSG).to_html
störmer; Embracing the trend for natural materials, störmer recently launched a new collection of wood laminates and veneers. This enhances the ranges available through ST130, the flexible grid design system developed by störmer.

The Floating range was launched at the same time, which, along with the Linea and Half and Full grid ranges, accommodates even the most demanding design specifications. störmer's "Just in time" service available on the lower price groups executes a 12 day turnaround from point of order.

This, along with 8mm backs for all units, competitive pricing and many other aspects ensures that störmer is a viable market offering, encompassing a broad range of affordable styles and designs.
  end
MSG
  end
end
