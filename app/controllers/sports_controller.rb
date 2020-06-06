class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def show
    # @sports = Sport.where("celebrity_id = ?", params[:id])
    @sport = Sport.find(params[:id])
  end
end
