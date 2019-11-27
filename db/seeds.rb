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

pparray = [ "https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
"https://images.unsplash.com/photo-1566277913310-9834504c22e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
"https://images.unsplash.com/photo-1572965733194-784e4b4efa45?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
"https://images.unsplash.com/photo-1554780336-390462301acf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
"https://images.unsplash.com/photo-1541439998155-388623962c26?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
"https://images.unsplash.com/photo-1478070531059-3db579c041d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
"https://images.unsplash.com/photo-1496509218134-fad73128e572?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80",
"https://images.unsplash.com/photo-1490585639275-bd19bcafe620?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
"https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
"https://images.unsplash.com/photo-1470441623172-c47235e287ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80"]
pparray.each do |pic|
  u = User.create!(name: Faker::FunnyName.name,
                   description: Faker::Books::Dune.saying,
                   profile_picture: pic)
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
