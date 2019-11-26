# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # create_table :bookings do |t|
  #     t.references :service, foreign_key: true
  #     t.references :user, foreign_key: true
  #     t.datetime :start_time
  #     t.datetime :end_time
  #     t.boolean :accepted
  #     t.boolean :completed



Booking.destroy_all
User.destroy_all

10.times do
  u = User.create!(name: Faker::FunnyName.name,
                   description: Faker::Books::Dune.saying,
                   profile_picture: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/logo.png')
  s = Service.new(name: Faker::ProgrammingLanguage.name, description: Faker::TvShows::Simpsons.quote, price: rand(200..300))
  s.user = u
  s.save!

end

puts "Created #{User.all.length} users"


arr1 = User.all.first(5)
arr2 = User.all.last(5)

arr1.each do |e|
  b = Booking.new
  t1 = Faker::Time.forward(days: 23, period: :morning)
  t2 = Faker::Time.forward(days: 23, period: :morning)
  if t1 < t2
    b.start_time = t1
    b.end_time = t2
  else
    b.start_time = t2
    b.end_time = t1
  end
  b.service = e.service
  b.user = arr2.sample
  b.save!
end
