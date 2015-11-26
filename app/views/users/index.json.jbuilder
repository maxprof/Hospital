json.array!(@users) do |user|
  json.extract! user, :id, :name, :surname, :age, :status, :enter_date, :admin_id, :diagnoz
  json.url user_url(user, format: :json)
end
