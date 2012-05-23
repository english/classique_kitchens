class HandMadeKitchen < Kitchen
  # TODO: extract this into presenter/exhibit
  def self.type
    "Hand Made Kitchen"
  end

  def self.active_nav_item
    "Hand Made Furniture"
  end

  def self.description
    RDiscount.new(<<DESC).to_html
From the rich dark hues of walnut and the light shades of maple to the warm
colours of a hand painted kitchen, each piece of furniture supplied by
Classique Kitchens can be built in the materials and style of your choice.

Working with hardwoods carefully selected from environmentally sustainable
sources, our range of cabinets and worktops include walnut, oak, cherry, ash,
sycamore, beech, maple and chestnut all available in a choice of finishes.
Softwoods such as pine may also be used. Hand painted furniture is created from
tulip wood and other components and can be finished in a pallet of your choice
for that individual feel.
DESC
  end
end
