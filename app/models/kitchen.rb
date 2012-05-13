class Kitchen < ActiveRecord::Base
  attr_accessible :name, :image
  validates :name, presence: true, uniqueness: true

  has_attached_file :image, styles: { featured: '940x529#' }
  validates_attachment_presence :image

  def self.featured
    self.where(featured: true)
  end
end

class StormerKitchen < Kitchen ; end
class HandMadeKitchen < Kitchen ; end
