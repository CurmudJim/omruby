class WatchesController < ApplicationController
  before_action :authenticate_user!

  def create
    movie = Movie.find(params[:id])
    movie.liked_by current_user
    redirect_to movies_path(@movies, :anchor => "wall")
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.unliked_by current_user
    redirect_to movies_path(@movies, :anchor => "wall")
  end

end
