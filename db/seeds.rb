puts "Starting Seed"
puts "Cleaning database"

Booking.destroy_all
Review.destroy_all
Availability.destroy_all
UserSport.destroy_all
User.destroy_all
Sport.destroy_all
# Message.destroy_all
# Chatroom.destroy_all

puts "Creating users, sports, etc."
#Sports
sports_array = []
sports_array << Sport.create!(name:"Squash")
sports_array << Sport.create!(name:"Badminton")
sports_array << Sport.create!(name:"Football")
sports_array << Sport.create!(name:"Frisbee")

#Permanent database users
yasir = User.create!(first_name:"Yasir", email:"yasir@yasir.com", password:"123abc")
yasir.user_sports << UserSport.new(sport: sports_array.first, sport_level: rand(1..5))
yasir_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: sports_array.first, user: yasir)

andy = User.create!(first_name:"Andy", email:"andy@andy.com", password:"123abc")
andy.user_sports << UserSport.new(sport: sports_array.first, sport_level: rand(1..5))
andy_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: sports_array.first, user: yasir)

#Temporary database users
20.times do
  name = Faker::Name.first_name
  sport = sports_array.first
  # sport = sports_array.sample
  user = User.create!(first_name: name, email: Faker::Internet.email, password: "123abc")
  user.user_sports << UserSport.new(sport: sport, sport_level: rand(1..5))
  user_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: sport, user: user)
end

#Match bookings
booking1 = Booking.create!(sport: sports_array.first, status: 'pending', date: Date.today)
booking1.users = [yasir, andy]
booking2 = Booking.create!(sport: sports_array.first, status: 'pending', date: Date.today+1)
booking2.users = [andy, yasir]

#Post-match reviews of other users
review1 = Review.create!(content:"Awesome game, punctual", rating:4, reviewer: andy, reviewee: yasir, booking: booking1)
review2 = Review.create!(content:"Great fun, quick to reply", rating:5, reviewer: yasir, reviewee: andy, booking: booking2)

puts "Finished Seeding"
