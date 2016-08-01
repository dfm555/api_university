json.extract! token, :id, :name, :token, :number_of_requests, :status, :created_at, :updated_at
json.url token_url(token, format: :json)