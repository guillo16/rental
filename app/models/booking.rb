class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :date, presence: true
  validates :start, presence: true
  validates :end, presence: true
  validate :date_before_today
  # validate :end_time_before_start_time

  def date_before_today
    date_today = Date.today.to_time.to_i
    errors.add(:date, "can't be before today!") if date.to_time.to_i < date_today
  end

  def start_time_before_now
    time_today = Date.today.to_time.to_i
    errors.add(:start_time, "can't be before this hour!") if start_time.to_time.to_i <= time_today
  end

  def end_time_before_start_time
    errors.add(:end_time, "hay un error elegi bien!") if end_time.to_i <= start_time.to_i
  end
end
