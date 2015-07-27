class PostsController < ApplicationController
  def index
      @users = User.all
      @posts = Post.all
  end

  def new
  end

  def create
  end

  def edit
  end
end
