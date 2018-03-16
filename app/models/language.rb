class Language < ApplicationRecord

  has_many :user_languages, foreign_key: 'language_id'
  has_many :users, through: :user_languages

end
