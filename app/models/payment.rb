class Payment < ApplicationRecord
    validates_presence_of :name_movie, :name_customer,:mobile, :gmail,:total_cost,:add_voucher,:payment_method,:payment_time
    validates_uniqueness_of :gmail 
end
