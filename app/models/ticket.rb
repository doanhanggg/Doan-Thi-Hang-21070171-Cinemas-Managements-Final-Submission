class Ticket < ApplicationRecord
    validates_presence_of :name_movie, :showtime, :screen, :name_cinemas, :price_ticket, :seat
    validates_uniqueness_of :name_movie
end
