class PostsController < ApplicationController
  def index
    @posts = Post.all.page(params[:page]).per(5)

    @works = Work.all.page(params[:works]).per(5)
 end
  def new
    @post = Post.new

  end
  def create
    Post.create(blog_params)
    redirect_to posts_path

  end
  def show
    @post = Post.find(params[:id])

    @work = Work.find(params[:id])

  end
  def edit
    @post = Post.find(params[:id])

  end
  def update
    post = Post.find(params[:id])
    post.update(blog_params)
    redirect_to post_path(post.id)


  end
  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path


  end

  private
  def blog_params
    params.require(:post).permit(:title, :content, :image, :description, category_ids: [])
  end


end
