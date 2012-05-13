class KitchensController < ApplicationController
  def index
    @kitchens = Kitchen.all
  end

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
