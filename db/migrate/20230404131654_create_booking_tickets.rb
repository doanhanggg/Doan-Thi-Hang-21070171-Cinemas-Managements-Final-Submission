class CreateBookingTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_tickets do |t|
      t.integer :ticket_number
      t.string :seat_type
      t.string :position
      t.string :add_popcorn_combo
      t.string :screen_type

      t.timestamps
    end
  end
end
