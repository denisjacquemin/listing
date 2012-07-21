class RestaurantsController < ApplicationController
  respond_to :json
  
  def index
    @restaurants = Restaurant.all
  end
  
  def create
    respond_with(Restaurant.create(params[:restaurant])) # redirect to restaurant_url (show)
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
