class Category < ApplicationRecord
  has_many :vlog_categories, dependent: :destroy
  has_many :vlogs,  through:  :vlog_categories, dependent: :destroy
end
