class Payment < ApplicationRecord
    validates_presence_of :id_customer, :name_movie, :add_voucher, :total_cost, :payment_method, :payment_time
    validates_uniqueness_of :id_customer
     belongs_to :customer
end
