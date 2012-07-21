class RestaurantsController < ApplicationController
  respond_to :json
  
  def index
    @restaurants = Restaurant.all
  end
end
