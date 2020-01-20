# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = User.eager_load(comments: [:commenter]).with_attached_avatar.find params[:id]
  end

  def like
    @user = User.find params[:id]
    if current_user.liked? @user
      @user.unliked_by current_user
    else
      @user.liked_by current_user
    end
    inject_count
  end

  def unlike
    @user = User.find params[:id]
    if current_user.disliked? @user
      @user.undisliked_by current_user
    else
      @user.disliked_by current_user
    end
    @count = @user.get_dislikes.count
    inject_count
  end

  def offers
    @user = User.find params[:id]
  end

  private

  def inject_count
    @count_like = @user.get_likes.count
    @count_dislike = @user.get_dislikes.count
  end
end
