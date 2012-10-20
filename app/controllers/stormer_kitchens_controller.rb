# encoding: utf-8
class StormerKitchensController < ApplicationController

  def index
    @kitchens = StormerKitchen.all
    @type = StormerKitchen.type
    @description = StormerKitchen.description
    @active_nav_item = 'störmer küchens'
    @features = Feature.all
    @final_message = StormerKitchen.final_message
  end
  attr_reader :kitchens, :type, :description, :features, :final_message
  helper_method :kitchens
  helper_method :type
  helper_method :description
  helper_method :features
  helper_method :final_message
end
