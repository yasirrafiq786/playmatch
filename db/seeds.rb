require "open-uri"

puts "Starting seed"
puts "Cleaning database"

Booking.destroy_all
Review.destroy_all
Availability.destroy_all
UserSport.destroy_all
User.destroy_all
Sport.destroy_all

#Sports
puts "Creating sports"
sports_array = []

tennis = Sport.create!(name:"Tennis")
file = URI.open('https://images.unsplash.com/photo-1587683437362-da7775ffc532?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')
tennis.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
sports_array << tennis

# soccer = Sport.create!(name:"Soccer")
# file = URI.open('https://images.unsplash.com/photo-1543326727-cf6c39e8f84c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
# soccer.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
# sports_array << soccer
#
# badminton = Sport.create!(name:"Badminton")
# file = URI.open('https://images.unsplash.com/photo-1572987590154-de340a13acfa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
# badminton.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
# sports_array << badminton
#
# hockey = Sport.create!(name:"Hockey")
# file = URI.open('https://images.unsplash.com/photo-1550713157-c27a66e5eb66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
# hockey.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
# sports_array << hockey
#
# golf = Sport.create!(name:"Golf")
# file = URI.open('https://images.unsplash.com/photo-1584837140804-599306fb37f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
# golf.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
# sports_array << golf
#
# frisbee = Sport.create!(name:"Frisbee")
# file = URI.open('https://images.unsplash.com/photo-1591337819702-5c21810edd47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
# frisbee.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
# sports_array << frisbee
#
# cricket = Sport.create!(name:"Cricket")
# file = URI.open('https://images.unsplash.com/flagged/photo-1567943337281-b2ed311deb5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80')
# cricket.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
# sports_array << cricket
#
# basketball = Sport.create!(name:"Basketball")
# file = URI.open('https://images.unsplash.com/photo-1505666287802-931dc83948e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')
# basketball.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
# sports_array << basketball

#Permanent database users
puts "Creating permanent users"
yasir = User.create!(first_name:"Yasir", email:"yasir@yasir.com", password:"123abc")
yasir.user_sports << UserSport.new(sport: sports_array.first, sport_level: rand(1..5))
yasir_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: sports_array.first, user: yasir)
file = URI.open('https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
# file = URI.open('https://kitt.lewagon.com/placeholder/users/random')
yasir.avatar.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

sleep(2)

andy = User.create!(first_name:"Andy", email:"andy@andy.com", password:"123abc")
andy.user_sports << UserSport.new(sport: sports_array.first, sport_level: rand(1..5))
andy_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: sports_array.first, user: yasir)
file = URI.open('https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
# file = URI.open('https://kitt.lewagon.com/placeholder/users/random')
andy.avatar.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

sleep(2)

#Temporary database users
puts "Creating temporary users"
# 20.times do
#   name = Faker::Name.first_name
#   sport = sports_array.sample
#   user = User.create!(first_name: name, email: Faker::Internet.email, password: "123abc")
#   user.user_sports << UserSport.new(sport: sport, sport_level: rand(1..5))
#   user_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: sport, user: user)
#   file = URI.open('https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
#   user.avatar.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
#   # sleep(2)
# end

#Match bookings
puts "Creating matches"
booking1 = Booking.create!(sport: sports_array.last, status: 'pending', date: Date.today)
booking1.users = [yasir, andy]
booking2 = Booking.create!(sport: sports_array.first, status: 'pending', date: Date.today+1)
booking2.users = [andy, yasir]

# 20.times do
#   booking = Booking.create!(sport: sports_array.first, status: 'pending', date: Date.today)
#   booking.users = [yasir, andy]
# end

#Post-match reviews of other users
puts "Creating reviews"
review_content = ["Awesome game, punctual", "Great fun, quick to reply", "Player skill matches their stated ability", "Felt at ease, fun game", "A little late, but good player", "Waited 15 mins but turned up", "Quick to respond, good game and exercise", "Player's skill matched mine", "Had a fun, social game, would play again!", "Definitely would play again"]

# 20.times do
#   review = Review.create!(content: review-content.sample, rating: rand(2..5), reviewer: andy, reviewee: yasir, booking: booking1)
# end

review1 = Review.create!(content:"Awesome game, punctual", rating:4, reviewer: andy, reviewee: yasir, booking: booking1)
review2 = Review.create!(content:"Great fun, quick to reply", rating:5, reviewer: yasir, reviewee: andy, booking: booking2)
review3 = Review.create!(content: review_content.sample, rating: rand(2..5), reviewer: andy, reviewee: yasir, booking: booking1)

puts "Finished seeding"
