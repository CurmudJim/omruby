module MoviesHelper

  def movie_params
    params.require(:movie).permit(:title, :nomination_list)
  end

end
