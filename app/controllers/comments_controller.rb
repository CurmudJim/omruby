class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    movie = Movie.find(params[:id])
    comment = movie.comments.build(comment_params)
    comment.user = current_user

    if comment.save
      flash[:notice] = "Comment has been created."
      redirect_to movie
    else
      flash[:alert] = "Comment has not been created."
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    comment = movie.comments.find(params[:format])
    comment.destroy
    redirect_to movie, notice: 'Comment was successfully deleted.'
  end

   private
     def comment_params
       params.permit(:comment)
     end

end
