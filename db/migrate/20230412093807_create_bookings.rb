class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :id_customer
      t.string :name_movie
      t.string :name_cinemas
      t.datetime :showtime
      t.string :screen_type
      t.string :seat_type
      t.string :position
      t.integer :ticket_number
      t.string :add_popcorn_combo
      t.string :price_ticket

      t.timestamps
    end
  end
end
