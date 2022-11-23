class OffersController < ApplicationController
  before_action :set_clown, only: %i[ show edit update destroy ]

  def index
    @clowns = Offer.all
  end

  def show
  end

  def new
    @clown = Offer.new
  end

  def create
    @clown = Offer.new(clown_params)
    if @clown.save
      redirect_to offers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @clown.update(clown_params)
      redirect_to offer_path(@clown)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @clown.destroy
    redirect_to offers_path
  end

  private

  def set_clown
    @clown = Offer.find(params[:id])
  end

  def clown_params
    params.require(:offer).permit(:name, :details, :features, :price, :user_id, photos:[])
  end
end
