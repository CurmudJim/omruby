class MoviesController < ApplicationController
  include MoviesHelper

  def index
    @movies = Movie.all.order("title ASC").sort_by { |x,y| x.nominations.length }.reverse
    @users = User.all.sort_by { |x,y| (x.get_up_voted Movie).length }.reverse
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

  def nomination_list
    nominations.join(", ")
  end
end
