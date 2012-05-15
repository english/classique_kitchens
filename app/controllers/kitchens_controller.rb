class KitchensController < ApplicationController
  def index
    klass = case params[:type]
            when 'Stormer' then StormerKitchen
            when 'HandMade' then HandMadeKitchen
            else Kitchen
            end
    @kitchens = klass.all
    @type = klass.name.humanize
  end
  attr_reader :kitchens, :type
  helper_method :kitchens
  helper_method :type


  def new
    @kitchen = Kitchen.new
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end

  def edit
    @kitchen = Kitchen.find(params[:id])
  end

  def create
    @kitchen = Kitchen.new(params[:kitchen])

    if @kitchen.save
      redirect_to @kitchen, notice: 'Kitchen was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @kitchen = Kitchen.find(params[:id])

    if @kitchen.update_attributes(params[:kitchen])
      redirect_to @kitchen, notice: 'Kitchen was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @kitchen = Kitchen.find(params[:id])
    @kitchen.destroy

    redirect_to kitchens_url
  end
end
