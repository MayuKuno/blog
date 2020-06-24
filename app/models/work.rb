class Work < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :work_languages, dependent: :destroy
  has_many :languages,  through:  :work_languages, dependent: :destroy

end
