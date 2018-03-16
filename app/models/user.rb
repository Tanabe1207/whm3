class User < ApplicationRecord
  has_secure_password

  has_many :user_languages, foreign_key: 'user_id'
  has_many :languages, through: :user_languages
  accepts_nested_attributes_for :user_languages

end
