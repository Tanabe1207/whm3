class User < ApplicationRecord
  has_secure_password
  mount_uploader :my_image, ImageUploader

  validates :nickname, presence: true
  validates :mail, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :my_image, presence: true
  enum gender:{男性:1, 女性:2}
  #validates :birthday, presence: true
  validates :nationality, presence: true

  has_many :user_language_levels, foreign_key: 'user_id'
  has_many :languages, through: :user_language_levels,
  dependent: :destroy  #languageにlevelをnestするため
  accepts_nested_attributes_for :user_language_levels, allow_destroy: true, reject_if: :all_blank
  has_many :offers

end

# t.string :nickname
# t.string :mail
# t.string :my_image
# t.string :gender
# t.date :birthday
# t.integer :age
# t.string :nationality
# t.string :offers
# t.string :favorites

# "Japan"
# "Korea"
# "Taiwan"
# "Hong Kong"
# "China"
# "Australia"
# "New Zealand"
# "France"
# "German"
# "Nederland"
# "Canada"
