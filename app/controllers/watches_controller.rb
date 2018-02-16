class WatchesController < ApplicationController
  before_action :authenticate_user!

  def index
    movies = Movie.all
    @watched = movies.liked_by current_user
  end

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
