class Post < ApplicationRecord
  validates :title, :content, presence: true
  mount_uploader :image, ImageUploader
  has_many :post_categories
  has_many :categories,  through:  :post_categories

end
