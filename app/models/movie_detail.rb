class MovieDetail < ApplicationRecord
    belongs_to :ticket
    validates_presence_of :director, :actors, :genre, :duration, :language, release_date, introduction
    validates_uniqueness_of :introduction
end
