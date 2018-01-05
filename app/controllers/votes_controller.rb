class VotesController < ApplicationController
    before_action :authenticate_user!

  def create
    beer = Beer.find(params[:id])
    beer.liked_by current_user
    redirect_to beers_path, notice: "You successfully liked a beer."
  end

  def destroy
    beer = Beer.find(params[:id])
    beer.unliked_by current_user
    redirect_to beers_path, notice: "You successfully unliked a beer."
  end
end
