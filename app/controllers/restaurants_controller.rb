class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    # raise
    if @restaurant.save
      redirect_to restaurants_path, notice: "Restaurant created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

def destroy
  set_restaurant
  @restaurant.destroy
  redirect_to restaurants_path, status: :see_other
end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
