class WorksController < ApplicationController
  def index
    @works = Work.all
 end
  def new
    @work = Work.new

  end
  def create
    Work.create(work_params)
    redirect_to posts_path
  end
  def show

    @work = Work.find(params[:id])

  end
  def edit
    @work = Work.find(params[:id])

  end
  def update

    work = Work.find(params[:id])
    work.update(work_params)
    redirect_to work_path(work.id)
  end
  def destroy

    work = Work.find(params[:id])
    work.destroy
    redirect_to posts_path
  
    
  end

  private
  def work_params
    params.require(:work).permit(:title, :description, :image, :concept, :period, language_ids: [])
  end
  
end



