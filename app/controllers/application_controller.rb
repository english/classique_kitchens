class ApplicationController < ActionController::Base
  protect_from_forgery

  def phone_number
    Company.phone_number
  end
  helper_method :phone_number
end
