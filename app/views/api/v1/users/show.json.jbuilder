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

#CHANGE THIS
# json.extract! @user, :id, :name, :location, :profile_picture, :description, :bookings

json.user do
  json.id @user.id
  json.description @user.description
  json.name @user.name
  json.location @user.location
  json.profile_picture @user.profile_picture
  json.bookings @bookings do |booking|
    json.booking = booking
    json.service = booking.service
    json.user = booking.service.user
  end
end

if @service
  json.service do
    json.id @service.id
    json.description @service.description
    json.name @service.name
    json.bookings @service.bookings do |booking|
      json.booking = booking
      json.user = booking.user
      json.service = booking.service
    end
  end
end


# json.user user.name
# json.extract!(@user) do |json, user|
#   json.id json.id
#   json.name json.description
#   json.array
