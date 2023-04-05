class BookingTicket < ApplicationRecord
    has_many :tickets
    validates_presence_of :ticket_number, :seat_type, :position, :add_popcorn_combo, :screen_type
    validates_presence_of :position
end
