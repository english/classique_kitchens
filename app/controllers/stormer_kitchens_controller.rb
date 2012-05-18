# encoding: utf-8
class StormerKitchensController < ApplicationController
  def index
    @kitchens = StormerKitchen.all
    @type = StormerKitchen.type.pluralize
    @description = StormerKitchen.description
    @active_nav_item = 'störmer küchens'
  end
  attr_reader :kitchens, :type, :description
  helper_method :kitchens
  helper_method :type
  helper_method :description
end
