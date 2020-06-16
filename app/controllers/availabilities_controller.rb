class AvailabilitiesController < ApplicationController
  def index
    # if params search availability == 0
    #   @availabilities

    @availabilities = Availability.all
    @sport = Sport.find(params[:sport_id])
    @bookings = Booking.all
  end

  def new
    @availability = Availability.new
  end

  def create
    @availability = Availability.new(availability_params)
    @user = current_user
    @availability.user = current_user
    if @availability.save
      redirect_to availabilities_path
    else
      render :new
    end
  end

  def show
  end

  private

  def availability_params
    params.require(:availability).permit(:start_time, :end_time, :sport_id)
  end
end
