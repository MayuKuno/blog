class VlogsController < ApplicationController
  def index
    @vlogs = Vlog.all.page(params[:page]).per(6)
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
    params.require(:vlog).permit(:title, :content, :image, :description, category_ids: [])
  end

end



 
