class BookingsController < ApplicationController
  def index
    @bookings = Booking.all.order(:id)
  end
  
  def show
    @bookings = Booking.find(params[:booking_id])
  end

  def new
    @availability = Availability.find(params[:availability_id])
    @booking = Booking.new
  end
  
  def create
    @booking = Booking.new(booking_params)
    @availability = Availability.find(params[:availability_id])
    @booking.status = "pending"
    @booking.sport = @availability.sport
    @booking.users = [current_user, @availability.user]
    # raise
    if @booking.save
      flash[:notice] = "Your Booking Has been Created!!!"
      redirect_to bookings_path
    else
      flash[:alert] = "Unable to made booking"
      render 'new'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      flash[:notice] = "You have #{@booking.status} the booking"
      redirect_to bookings_path
    else
      flash[:alert] = "Unable to perform the action"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :status)
  end

    
end
