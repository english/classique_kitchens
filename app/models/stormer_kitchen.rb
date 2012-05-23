# encoding: utf-8

class StormerKitchen < Kitchen
  # TODO: extract this into presenter/exhibit
  def self.type
    'Störmer Küchen'
  end

  def self.active_nav_item
    'Störmer Küchen'
  end

  def self.description
    RDiscount.new(<<DESC).to_html
Modern and timeless kitchens...

offer many possibilities of design arranged in a defined space. Superior
quality and the latest design trends are accentuated by innovative solutions
and the highest quality materials. Our desire is to design a kitchen which is
perfect both aesthetically and functionally, with attention paid to the
smallest of details.

Read the [2012 störmer
jounal](http://www.stoermer-kuechen.de/journal/index-gb.shtml#journal).

Classique Kitchens ensures intelligent use of space. This means, no more
awkward concerns. Creative storage solutions and a sophisticated range of
interior fittings guarantee organisation with optimum use.

Many of our ranges are built on a modular system enabling us to create your
dream kitchen. The benefit of such systems is that we can really tailor your
kitchen to suit you and your lifestyle. Effective LED lighting, personally
designed by our lighting specialists will really emphasise the final finishing
touch to your totally unique kitchen.
DESC
  end

  def self.final_message
    RDiscount.new(<<MSG).to_html
störmer; Embracing the trend for natural materials, störmer recently launched
a new collection of wood laminates and veneers. This enhances the ranges
available through ST130, the flexible grid design system developed by störmer.

The Floating range was launched at the same time, which, along with the Linea
and Half and Full grid ranges, accommodates even the most demanding design
specifications. störmer's "Just in time" service available on the lower price
groups executes a 12 day turnaround from point of order.

This, along with 8mm backs for all units, competitive pricing and many other
aspects ensures that störmer is a viable market offering, encompassing a broad
range of affordable styles and designs.
MSG
  end
end
