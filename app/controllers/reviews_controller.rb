class ReviewsController < ApplicationController

before_action :set_restaurant, only: [:new, :create]

  def new
    @review = @restaurant.reviews.build
  end

  def create
    @review = Review.name(review_params)
    @review = review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end



  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
