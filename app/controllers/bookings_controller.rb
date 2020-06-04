class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
  
  def show
    @bookings = Booking.find(params[:booking_id])
  end
  
  def create
    @availability = Availability.find(params[:availability_id])
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.sport = @availability.sport
    @booking.users = [current_user, @availability.user]
    if @booking.save
      flash[:notice] = "Your Booking Has been Created!!!"
      redirect_to bookings_path
    else
      flash[:alert] = "Unable to made booking"
      redirect_to availability_path(@availability)
    end
  end

  private

  def booking_params
    params.permit(:status)
  end
end
