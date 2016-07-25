class WelcomeController < ApplicationController

  def index
    @trails = Trail.all

  end



  def show
    @trails = Trail.find(params[:id])
    @reviews = Review.where(trail_id: @trails).order("created_at DESC")
  end

end
