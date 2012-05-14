class ApplicationController < ActionController::Base
  protect_from_forgery

  def phone_number
    Company.phone_number
  end
  helper_method :phone_number

  def address
    Company.address
  end
  helper_method :address
end
