class VlogsController < ApplicationController

  def index
    @vlogs = Vlog.published.page(params[:page]).per(6)
    # Blog.where(status: :published)と同義
    @categories = Category.all

  end
  def new
    @vlog = Vlog.new
  end
  def create
    Vlog.create(vlog_params)
    redirect_to posts_path
  end
  def show
    @vlog = Vlog.find(params[:id])
    @categories = Category.all
    gon.content = @vlog.content

  end
  def edit
    @vlog = Vlog.find(params[:id])
  end
  def update
    vlog = Vlog.find(params[:id])
   vlog.update(vlog_params)
    redirect_to vlog_path(vlog.id)
  end

  def destroy
    vlog = Vlog.find(params[:id])
    vlog.destroy
    redirect_to posts_path
  end



  private
  def vlog_params
    params.require(:vlog).permit(:title, :content, :image, :description, :status, category_ids: [])
  end



  

end



 
