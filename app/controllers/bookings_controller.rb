class BookingsController < ApplicationController
  def new
    @sport = Sport.find(params[:sport_id])
    @booking = Booking.new
  end

  def create
    @sport = Sport.find(params[:sport_id])
    @booking = Booking.new(booking_params)
    
  end

  private

  def booking_params
    params.require(:booking).permit(:date_time, :status)
  end
end
