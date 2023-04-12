json.extract! payment, :id, :id_customer, :name_movie, :add_voucher, :total_cost, :payment_method, :payment_time, :created_at, :updated_at
json.url payment_url(payment, format: :json)
