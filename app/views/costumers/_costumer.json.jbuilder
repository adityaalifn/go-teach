json.extract! costumer, :id, :username, :password, :name, :phone_number, :created_at, :updated_at
json.url costumer_url(costumer, format: :json)
