class RemoveDatetimeFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :date_time
  end
end
