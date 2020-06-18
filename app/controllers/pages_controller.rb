class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @sports = Sport.all
  end

  def navigation
    
  end

  def kitchensink
  end

  def kitchensink_2
    @sport = Sport.first
  end
end
