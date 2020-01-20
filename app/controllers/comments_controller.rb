# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @comment = @user.comments.create(comment_params)
    @comment.save
    redirect_to user_path(@user)
  end

  def comment_params
    params.require(:comment).permit(:body, :rate)
  end
end
