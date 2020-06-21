class Language < ApplicationRecord
  has_many :work_languages
  has_many :works,  through:  :work_languages

end
