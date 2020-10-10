class Vlog < ApplicationRecord
    validates :title, :content, presence: true
  mount_uploader :image, ImageUploader
  
  has_many :vlog_categories, dependent: :destroy
  has_many :categories,  through:  :vlog_categories, dependent: :destroy
   
end
