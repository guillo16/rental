class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :end_date, presence: true
  validates :start_date, presence: true

  validate :end_date_after_start_date
  validate :date_before_today
  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

  def date_before_today
    return if end_date.blank? || start_date.blank?
    dates = Date.today.to_time.to_i
    errors.add(:start_date, "tiene que ser despues de hoy") if start_date.to_time.to_i < dates
  end
end





