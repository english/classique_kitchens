class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :company, :email, :content, :date, :appointment

  validates_presence_of :name, :email, :content
  validates_length_of :content, maximum: 500
  validates_format_of :email,
    with: /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i

  def initialize(attrs={})
    attrs.each do |k, v|
      send("#{k}=", v)
    end
  end

  def persisted?
    false
  end
end
