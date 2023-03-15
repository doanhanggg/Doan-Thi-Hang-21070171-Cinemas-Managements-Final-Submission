json.extract! booking, :id, :ticket_number, :seattype, :screentype, :position, :add_scalding_combo, :created_at, :updated_at
json.url booking_url(booking, format: :json)
