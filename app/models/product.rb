class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true

  def unavailable_dates
    bookings.pluck(:start_time, :end_time).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
