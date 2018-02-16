class NominationsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def index
    @nominations = Nomination.all.order('name ASC')
  end

  def show
    @nomination = Nomination.find(params[:id])
    @movies = @nomination.movies.order('title ASC')
  end


  def destroy

    @nomination = Nomination.find(params[:id]).destroy

    flash.notice = "Nomination '#{@nomination.name}' Deleted!"

    redirect_to nominations_path
  end

end
