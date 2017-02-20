json.extract! car_id, :id, :Year, :Make, :Model, :LicencePlate, :Color, :created_at, :updated_at
json.url car_id_url(car_id, format: :json)