class WatchesController < ApplicationController
  before_action :authenticate_user!

  def create
    movie = Movie.find(params[:id])
    movie.liked_by current_user
    redirect_to movies_path
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.unliked_by current_user
    redirect_to movies_path
  end

end
