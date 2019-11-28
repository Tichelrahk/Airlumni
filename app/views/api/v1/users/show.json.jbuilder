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

# json.user do
#   json.user
#     json.id @user.id
#     json.name @user.name
#     json.description @user.description
#     # json.bookings @user.bookings do |booking|
#     #   booking.id
#     # end
# end

# json.service do
#   json.service
#     json.id @service.id
#     json.name @service.name
#     json.description @service.description
# end


json.extract! @user, :id, :name, :description, :bookings
if @service
  json.service do
    json.id @service.id
    json.description @service.description
    json.name @service.name
    json.bookings @service.bookings
  end
end


# json.user user.name
# json.extract!(@user) do |json, user|
#   json.id json.id
#   json.name json.description
#   json.array
