json.extract! booking, :id, :name_movie, :ticket_number, :seat_type, :position, :add_popcorn_combo, :screen_type, :created_at, :updated_at
json.url booking_url(booking, format: :json)
