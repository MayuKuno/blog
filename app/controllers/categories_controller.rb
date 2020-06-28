class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  def show
    @categories = Category.all.page(params[:page]).per(6)
    @category = Category.find(params[:id])

  end


end