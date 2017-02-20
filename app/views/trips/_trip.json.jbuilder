json.extract! trip, :id, :orgin, :destination, :leave_time, :passengers, :trip_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)