class RestaurantsController < ApplicationController
  # before_action :set_restaurant, only: %i[ index new show create ]
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    # @restaurant = Restaurant.create(restaurant_params)
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end


end
