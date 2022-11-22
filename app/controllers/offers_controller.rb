class OffersController < ApplicationController
  before_action :set_clown, only: %i[ show ]%i

  def show
  end

  private

  def set_clown
    @clown = Clown.find(params[:id])
  end
end
