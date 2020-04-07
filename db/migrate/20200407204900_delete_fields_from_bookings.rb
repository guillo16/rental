class DeleteFieldsFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :start_time, :time
    remove_column :bookings, :end_time, :time
    remove_column :bookings, :end, :datetime
    remove_column :bookings, :start, :datetime
    remove_column :bookings, :date, :date
  end
end
