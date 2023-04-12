json.extract! booking, :id, :id_customer, :name_movie, :name_cinemas, :showtime, :screen_type, :seat_type, :position, :ticket_number, :add_popcorn_combo, :price_ticket, :created_at, :updated_at
json.url booking_url(booking, format: :json)
