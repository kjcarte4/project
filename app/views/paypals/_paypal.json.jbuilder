json.extract! paypal, :id, :paypaluser, :created_at, :updated_at
json.url paypal_url(paypal, format: :json)