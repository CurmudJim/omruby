class NominationsController < ApplicationController

  def index
    @nominations = Nomination.all.order('name ASC')
  end

  def show
    @nomination = Nomination.find(params[:id])
    @movies = @nomination.movies.order('title ASC')
  end

end
