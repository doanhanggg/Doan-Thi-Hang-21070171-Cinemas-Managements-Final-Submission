class Customer < ApplicationRecord
    validates_presence_of :id_customer, :name, :mobile, :gmail
    validates_uniqueness_of :id_customer, :gmail
end
