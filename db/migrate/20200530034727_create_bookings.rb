class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.text :status
      t.datetime :date_time
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
