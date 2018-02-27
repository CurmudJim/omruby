class UsersController < ApplicationController
  def show
    @user = User.find_by(username: params[:username])
    @tweets = @user.tweets
    @movies = (@user.get_up_voted Movie).order('title ASC')
  end

end
