class Customer < ApplicationRecord
    validates_presence_of :id_customer, :name, :mobile, :gmail
    validates_uniqueness_of :id_customer, :gmail
     has_many :bookings
     has_many :payments
     has_many :movies
end

