class Work < ApplicationRecord
  has_many :work_languages
  has_many :languages,  through:  :work_languages

end
