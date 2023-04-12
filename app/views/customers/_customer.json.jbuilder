json.extract! customer, :id, :id_customer, :name, :mobile, :gmail, :created_at, :updated_at
json.url customer_url(customer, format: :json)
