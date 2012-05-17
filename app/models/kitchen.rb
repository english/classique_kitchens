class Kitchen < ActiveRecord::Base
  attr_accessible :name, :image, :type, :featured
  validates :name, presence: true
  validates :name, uniqueness: true

  has_attached_file :image, {
    styles: { featured: '940x529#' },
    url: '/system/kitchens/:attachment/:id/:basename_:style.:extension'
  }.merge(PAPERCLIP_STORAGE_OPTIONS)

  validates_attachment_presence :image

  def self.featured
    self.where(featured: true)
  end

  def self.inherited(child)
    child.instance_eval do
      def model_name
        Kitchen.model_name
      end
    end

    super
  end

  def self.select_options
    descendants.map{ |c| c.to_s }.sort
  end

  # TODO: extract this into presenter/exhibit
  def self.type
    "All Kitchens"
  end

  def self.description
    RDiscount.new(<<DESC).to_html
Our Kitchens are carefully selected from high quality branded European
suppliers, ensuring you the very latest in cutting edge design and innovation.
Our portfolio of over 50 ranges include high gloss lacquers, carbon acrylic
through to our bespoke handmade furniture.

When combined with quality appliances and a choice from our wide variety of
work surfaces, the results are simply stunning.
DESC
  end
end
