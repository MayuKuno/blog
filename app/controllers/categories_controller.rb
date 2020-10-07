class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  def show
    @categories = Category.all.page(params[:page]).per(6)
    @category = Category.find(params[:id])

  end
  def new
    @category = Category.new
  end
  def create
    Category.create(category_params)
    redirect_to posts_path
  end
  private
  def category_params
    params.require(:category).permit(:text)
  end
end



