class OffersController < ApplicationController
  before_action :set_clown, only: %i[ show ]

  def show
  end

  private

  def set_clown
    @clown = Offer.find(params[:id])
  end
end
