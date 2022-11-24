class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @clowns = Offer.all.sample(3)
  end

  def profile
  end
end
