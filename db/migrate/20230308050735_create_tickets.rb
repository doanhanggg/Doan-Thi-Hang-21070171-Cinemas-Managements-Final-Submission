class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :name_movie
      t.string :showtime
      t.integer :screen
      t.string :name_cinemas
      t.string :price_ticket
      t.string :seat

      t.timestamps
    end
  end
end
