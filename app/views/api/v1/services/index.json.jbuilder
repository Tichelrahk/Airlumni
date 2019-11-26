json.services do
  json.array! @services do |service|
    # user = service.user
    json.extract! service, :id, :name, :description, :price, :user
  end
end
