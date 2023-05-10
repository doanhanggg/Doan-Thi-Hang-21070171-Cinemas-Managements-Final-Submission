class Booking < ApplicationRecord
    validates_presence_of :id_customer, :name_movie, :name_cinemas, :screen_type, :seat_type, :position, :ticket_number, :add_popcorn_combo, :price_ticket
    validates_uniqueness_of :customer
     belongs_to :customer
end
