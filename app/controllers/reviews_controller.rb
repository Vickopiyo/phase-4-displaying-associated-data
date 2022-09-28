class ReviewsController < ApplicationController

  def index
    reviews = Review.all.order(rating: :asc)
    render json: reviews, include: :dog_house
  end

end
