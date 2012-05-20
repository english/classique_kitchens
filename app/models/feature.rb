class Feature < ActiveRecord::Base
  attr_accessible :content, :image
  has_attached_file :image, styles: { main: '200x230#' }
  validates_attachment_presence :image

  # TODO: Put this in its place
  def content_html
    RDiscount.new(self.content).to_html.strip
  end
end
