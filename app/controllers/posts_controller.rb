class PostsController < ApplicationController
  def index
    @vlogs = Vlog.all.page(params[:page]).per(5)

    @works = Work.all
 end
  # def new
  #   @blog = Post.new

  # end
  # def create
  #   Post.create(blog_params)
  #   redirect_to posts_path

  # end
  def show
    @vlog = Vlog.find(params[:id])

    @work = Work.find(params[:id])

  end
  # def edit
  #   @blog = Post.find(params[:id])

  # end
  # def update
  #   blog = Post.find(params[:id])
  #   blog.update(blog_params)
  #   redirect_to post_path(blog.id)


  # end
  # def destroy
  #   blog = Post.find(params[:id])
  #   blog.destroy
  #   redirect_to posts_path


  # end

  # private
  # def blog_params
  #   params.require(:blog).permit(:title, :content, :image, :description, category_ids: [])
  # end


end
