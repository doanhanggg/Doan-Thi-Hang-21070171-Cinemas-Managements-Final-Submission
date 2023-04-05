json.extract! payment, :id, :name_movie, :name_customer, :mobile, :gmail, :total_cost, :add_voucher, :payment_method, :payment_time, :created_at, :updated_at
json.url payment_url(payment, format: :json)
