class ReviewsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])

    @review = Review.new(review_params)
    @review.user = current_user
    @review.cocktail = @cocktail

    @review.save

    redirect_to cocktail_path(params[:cocktail_id])
    authorize @cocktail

  end

  def review_params
    params.require(:review).permit(:content, :rating)

  end

end
