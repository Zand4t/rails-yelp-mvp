class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end


  def show
    @restaurants = Restaurant.find(params[:id])
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    Restaurant.create(params.require(:name).permit(:address, :phone_number, :category))
    redirect_to restaurants_path
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end


  def update
    @restaurant.update = Restaurant.find(params[:id])

  end

  def destroy
    @restaurant.destroy
    redirect_to task_path
  end

end
