class Offer < ApplicationRecord
  mount_uploader :offer_image, ImageUploader
  validates :user_id, presence: true
  validates :country, presence: true
  # validates :state, presence: true
  # validates :region, presence: true
  validates :period_from, presence: true
  validates :period_to, presence: true
  validates :title, presence: true
  validates :detail, presence: true
  validates :offer_image, presence: true

  belongs_to :user

  mount_uploader :offer_image, ImageUploader

end

# t.integer: user_id
# t.string: country
# t.string: state
# t.string: region
# t.integer: period_from
# t.integer: period_to
# t.string: title
# t.string: detail
# t.string: offer_image
