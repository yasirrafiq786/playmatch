class SportsController < ApplicationController
  def index
    if params[:query].present?
    @sports = Sport.algolia_search(params[:query])
    else
    @sports = Sport.all
  end
end

  def show
    @sport = Sport.find(params[:id])
  end
end
