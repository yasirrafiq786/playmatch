class SportsController < ApplicationController
  def index
    if params[:query].present?
    @sports = Sport.algolia_search(params[:query])
    else
    @sports = Sport.all
  end
end

  def show
    # @sports = Sport.where("celebrity_id = ?", params[:id])
    @sport = Sport.find(params[:id])
  end
end
