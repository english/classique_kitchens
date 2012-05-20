class Feature < ActiveRecord::Base
  attr_accessible :content
  has_attached_file :image, styles: { main: '200x230#' }
  validates_attachment_presence :image

  def content_html
    RDiscount.new(self.content).to_html.strip
  end
end
