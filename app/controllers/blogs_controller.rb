class BlogsController < ApplicationController
  def index
    @blogs = Post.all

  end
  def show
    @blog = Post.find(params[:id])
  end

end
