class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :ticket_number
      t.string :seattype
      t.string :screentype
      t.string :position
      t.string :add_scalding_combo

      t.timestamps
    end
  end
end
