class Vlog < ApplicationRecord
  validates :title, :content, presence: true
  mount_uploader :image, ImageUploader
  
  # https://pgmg-rails.com/blogs/21
  # 下書き機能
  has_many :vlog_categories, dependent: :destroy
  has_many :categories,  through:  :vlog_categories, dependent: :destroy
  enum status: { draft: 0, published: 1 }

end
