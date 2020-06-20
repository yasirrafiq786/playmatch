class AvailabilitiesController < ApplicationController
  def index
    @sport = Sport.find(params[:sport_id])
    @availabilities = Availability.where(sport: @sport)
    if params[:search].present?
      # flash[:notice] = "AJAX is working"
      @availabilities = @availabilities.select do |availability|
        availability.user.user_sports.find_by(sport: @sport).sport_level == params[:search][:skill].to_i
      end
    end
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
