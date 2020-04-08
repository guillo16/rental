class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
