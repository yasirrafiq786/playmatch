class AvailabilitiesController < ApplicationController
  def index
    @availabilities = Availability.all
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
