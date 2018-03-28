class PostsController < ApplicationController

  # for root page
  def index
    @posts = Post.all

    render json: @posts
  end
end
