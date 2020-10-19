class VlogsController < ApplicationController
  before_action :hash_init
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


  def hash_init
    options = {
      bucket: ENV['AWS_S3_BUCKET'],
      region: ENV['AWS_DEFAULT_REGION'],
      keyStart: 'uploads', 
      acl: 'public-read',
      accessKey: ENV['AWS_ACCESS_KEY_ID'],
      secretKey: ENV['AWS_SECRET_ACCESS_KEY'],
    }
     @aws_data = FroalaEditorSDK::S3.data_hash(options)
end
  

end



 
