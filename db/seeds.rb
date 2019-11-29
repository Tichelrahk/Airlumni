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

pparray = [
  ["Nicole Gerbauld","https://media.licdn.cn/dms/image/C4E03AQGzCzwu4VTNWw/profile-displayphoto-shrink_800_800/0?e=1580342400&v=beta&t=txxSE14yTic91H-YbH8uCFm8Ui9nt5YSQkitwQQZG2U","I graduated in Industrial Engineering from PUC Rio de Janeiro, and I have worked for five years in the family office of one of the most successful bankers in Brazil"],
  ["Zachary Goodnough","https://media.licdn.com/dms/image/C5103AQE6FNjUEps1tA/profile-displayphoto-shrink_800_800/0?e=1580342400&v=beta&t=_xJF6q4L6nABxkjVohKN-6zHDRZR-RU4G_JckhvzDjY","I practice programming regularly. I have won 2 programming competitions"],
  ["Sergio Rivas","https://media.licdn.cn/dms/image/C5603AQGcGA1PoXTBIQ/profile-displayphoto-shrink_800_800/0?e=1580342400&v=beta&t=TD7JJViyxf2dygD0AG5IjG5U5d4XoLlTYZTtFs6GIXM","I have 4 years of experience in teaching field. Right now I'm world largest learning platform Unacademy's educator."],
  ["xiaohu pei","https://media.licdn.cn/dms/image/C5603AQGSNG9pZR3o1w/profile-displayphoto-shrink_800_800/0?e=1580342400&v=beta&t=RWxKQp91F-_GjeLgGJe2Q8Tc8ZvJOOCEw2knVatnnjQ","Full time .Net & Python develper.Experience in teaching for 3+ of years for DS, OOPs, SQL, C#.Net, VB.Net, Python, Java"],
  ["Audrey Gourdji","https://media.licdn.cn/dms/image/C5603AQG1Vxgfyfwzug/profile-displayphoto-shrink_800_800/0?e=1580342400&v=beta&t=1rYvLYG9HuLNR1AnB3yqquj53r9gu7haxWgliKtctP0","Since I have been asked to do a wide variety of coding (languages, styles, design patterns, etc) I believe I can provide help"],
  ["Frank (朱庆丰) Zhu","https://media.licdn.cn/dms/image/C5103AQFVJCaMrxT6og/profile-displayphoto-shrink_800_800/0?e=1580342400&v=beta&t=Id-a_nst4wg41zV2n6ZloPXI-ygoVPhroev9ihde1Ws","I have studies Computer architecture at an intermediate and advanced level at my university. I have also done an internship"],
  ["Dan Li","https://avatars2.githubusercontent.com/u/35441384?v=4","I hold a Computer and Electronic Engineering B.sc and M.sc from the Islamic Azad University in Iran. I have completed my PhD"],
  ["Pavel Liser","https://media.licdn.cn/dms/image/C5603AQHCSlbdlrAQBw/profile-displayphoto-shrink_800_800/0?e=1580342400&v=beta&t=TQJLkyNmAdg1D6XKAYB7h_WbKoF4j5uMViCGMIzx-S4","I'm an expert on python and C++. I'm also good with discrete math and CS theory (NFAs, regexes, Turing Machines"],
  ["Adam Kalimi","https://media.licdn.com/dms/image/C5103AQESizJPtAhTJQ/profile-displayphoto-shrink_800_800/0?e=1580342400&v=beta&t=dHdHknnVSsen69rwfNGE5UhPnTUmgjAYTVfD1ezuOKg","C,C++ ,Java  Programming are my core subjects in Computer Science"],
  ["Agnes Selvita","https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/f0dvmknmklphpqo3ckp6.jpg","This is my cup of tea. I help my friends understand difficult problems, and sometime inspire them to study algorithms"]
]

programming_language = ["CSS HTML", "JavaScript", "Ruby on Rails","Ruby"].sample

pparray.each do |array|
  u = User.create!(name: array[0],
                   profile_picture: array[1])
  s = Service.new(name: programming_language, description: array[2], price: rand(200..300))
  s.user = u
  s.save!
end

puts "Created #{User.all.length} users"


# arr1 = User.all.first(5)
# arr2 = User.all.last(5)

# arr1.each do |e|
#   b = Booking.new
#   t1 = Faker::Time.forward(days: 2, period: :morning)
#   t2 = Faker::Time.forward(days: 2, period: :morning)
#   if t1 < t2
#     b.start_time = t1
#     b.end_time = t2
#   else
#     b.start_time = t2
#     b.end_time = t1
#   end
#   b.service = e.service
#   b.user = arr2.sample
#   b.save!
# end
