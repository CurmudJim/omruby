class MoviesController < ApplicationController
  include MoviesHelper

  def index
    @movies = Movie.all.order('title ASC')
    # @nominations = @movie.nominations.order('name ASC')
  end

  def show
    @movie = Movie.find(params[:id])
    @nominations = @movie.nominations.order('name ASC')
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save

    redirect_to movies_path
  end

end
