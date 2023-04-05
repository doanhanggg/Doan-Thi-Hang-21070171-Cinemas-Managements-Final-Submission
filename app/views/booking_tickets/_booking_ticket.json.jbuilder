json.extract! booking_ticket, :id, :ticket_number, :seat_type, :position, :add_popcorn_combo, :screen_type, :created_at, :updated_at
json.url booking_ticket_url(booking_ticket, format: :json)
