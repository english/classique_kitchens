class Kitchen < ActiveRecord::Base
  attr_accessible :name, :image, :type
  validates :name, :type, presence: true
  validates :name, uniqueness: true

  has_attached_file :image, {
    styles: { featured: '940x529#' }
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
end

class StormerKitchen < Kitchen ; end
class HandMadeKitchen < Kitchen ; end
