class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to @review.restaurant, notice: "Review was created"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:restaurant_id, :content, :rating)
  end
end
