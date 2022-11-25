class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)

    @markers = @bookings.geocoded.map do |booking|
      {
        lat: booking.latitude,
        lng: booking.longitude
      }
    end
  end

  def new
    @booking = Booking.new
  end

  def create
    @clown = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @clown
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      render "offers/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end


  private


  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :location)
  end
end
