class Post < ApplicationRecord
  validates :title, :content, presence: true
  mount_uploader :image, ImageUploader
  has_many :post_categories, dependent: :destroy
  has_many :categories,  through:  :post_categories, dependent: :destroy

end
