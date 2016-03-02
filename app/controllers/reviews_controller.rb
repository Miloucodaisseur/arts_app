class ReviewsController < ApplicationController
  def index
    render json: {
      reviews: @art.reviews.order(id: :desc)
    }
end

def create
    review = Review.create(review_params)
    review.art = @art

    if review.save
      render json: {
        review: review
      }
    else
      render json: {
        message: "Please try again!",
        errors: review.errors
      }
    end
  end

  private
  def set_art
    @art = Art.find(params[:art_id])
  end

  def review_params
    params.require(:review).permit(:name, :description, :rating, :art_id)
  end
end
