class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name_movie
      t.string :ticket_number
      t.string :seat_type
      t.string :position
      t.string :add_popcorn_combo
      t.string :screen_type

      t.timestamps
    end
  end
end
