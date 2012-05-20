# encoding: utf-8
class StormerKitchensController < ApplicationController
  def index
    @kitchens = StormerKitchen.all
    @type = StormerKitchen.type.pluralize
    @description = StormerKitchen.description
    @active_nav_item = 'störmer küchens'
    @features = Feature.all
  end
  attr_reader :kitchens, :type, :description, :features
  helper_method :kitchens
  helper_method :type
  helper_method :description
  helper_method :features
end
