class CocktailsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]


  def index
    @cocktails = policy_scope(Cocktail).order(created_at: :desc)
    # @cocktails = Cocktail.all

  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new
    authorize @cocktail
  end

  def new
    @cocktail = Cocktail.new
    authorize @cocktail

  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.user = current_user
    @cocktail.save
    redirect_to cocktails_path
    authorize @cocktail
  end

  def edit

  end

  def update
    authorize @cocktail
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.update

    redirect_to cocktails_path
  end

  def destroy

  end

private
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
