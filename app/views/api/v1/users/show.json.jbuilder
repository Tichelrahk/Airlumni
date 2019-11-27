# json.extract! @user, :id, :name, :description, :bookings, :service
# json.service @user.service do |service|
#   json.set! service, :id,
#                           :name,
#                           :description,
#                           :bookings
# end

# {
#   {user: {:id, :name, :description, :bookings}},
#   {service: {:id, :name, :description, :bookings}}
# }

json.user do
  json.user
    json.id @user.id
    json.name @user.name
    json.description @user.description
    # json.bookings @user.bookings do |booking|
    #   booking.id
    # end
end

json.service do
  json.service
    json.id @service.id
    json.name @service.name
    json.description @service.description
end
