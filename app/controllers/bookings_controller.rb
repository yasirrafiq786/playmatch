class BookingsController < ApplicationController
  def new
    @sport = Sport.find(params[:sport_id])
    @booking = Booking.new
  end

  def create
  end
end
