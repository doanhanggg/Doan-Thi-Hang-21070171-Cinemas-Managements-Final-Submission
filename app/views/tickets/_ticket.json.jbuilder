json.extract! ticket, :id, :name_movie, :showtime, :screen, :name_cinemas, :price_ticket, :seat, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
