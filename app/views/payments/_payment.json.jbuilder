json.extract! payment, :id, :name_customer, :mobile, :gmail, :add_voucher, :payment_time, :payment_method, :total_cost, :created_at, :updated_at
json.url payment_url(payment, format: :json)
