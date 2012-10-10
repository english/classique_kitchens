class HandMadeFurnitureController < ApplicationController
  caches_action :index

  def index
    @kitchens        = HandMadeKitchen.all
    @type            = HandMadeKitchen.type.pluralize
    @description     = HandMadeKitchen.description
    @active_nav_item = HandMadeKitchen.active_nav_item
  end
  attr_reader :kitchens, :type, :description
  helper_method :kitchens
  helper_method :type
  helper_method :description
end
