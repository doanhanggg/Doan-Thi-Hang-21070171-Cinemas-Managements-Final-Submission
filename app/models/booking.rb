class Booking < ApplicationRecord
    validates_presence_of :name_movie, :ticket_number, :seat_type, :position, :add_popcorn_combo, :screen_type
    validates_uniqueness_of :position

end
