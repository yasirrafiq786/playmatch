class ProfilesController < ApplicationController
  def index
    @profiles = Users.all
  end

  def show
    @profile = User.find(params[:id])
  end
end
