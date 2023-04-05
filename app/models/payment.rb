class Payment < ApplicationRecord
    has_many :tickets
    validates_presence_of :name_customer, :mobile, :gmail, :total_cost, :add_vocher, :payment_time, :payment_method
    validates_uniqueness_of :gmail
end
