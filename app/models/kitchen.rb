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
  Lorem ipsum dolor sit amet, [Stormer Kitchens](/kitchens?type=Stormer) adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. [Hand Made Kitchens](/kitchens?type=HandMade) ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
DESC
  end
end
