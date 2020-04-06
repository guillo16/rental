class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :date_before_today

  def date_before_today
    date_today = Date.now
    errors.add("can't be before today!") if date <= date_today
  end
end
