class Language < ApplicationRecord
  has_many :work_languages, dependent: :destroy
  has_many :works,  through:  :work_languages, dependent: :destroy

end
