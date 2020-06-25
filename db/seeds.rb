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

soccer = Sport.create!(name:"Soccer")
file = URI.open('https://images.unsplash.com/photo-1543326727-cf6c39e8f84c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
soccer.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
sports_array << soccer

badminton = Sport.create!(name:"Badminton")
file = URI.open('https://images.unsplash.com/photo-1572987590154-de340a13acfa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
badminton.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
sports_array << badminton

hockey = Sport.create!(name:"Hockey")
file = URI.open('https://images.unsplash.com/photo-1550713157-c27a66e5eb66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
hockey.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
sports_array << hockey

golf = Sport.create!(name:"Golf")
file = URI.open('https://images.unsplash.com/photo-1584837140804-599306fb37f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
golf.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
sports_array << golf

frisbee = Sport.create!(name:"Frisbee")
file = URI.open('https://images.unsplash.com/photo-1591337819702-5c21810edd47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
frisbee.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
sports_array << frisbee

cricket = Sport.create!(name:"Cricket")
file = URI.open('https://images.unsplash.com/flagged/photo-1567943337281-b2ed311deb5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80')
cricket.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
sports_array << cricket

basketball = Sport.create!(name:"Basketball")
file = URI.open('https://images.unsplash.com/photo-1505666287802-931dc83948e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')
basketball.photo.attach(io: file, filename: 'sport.jpg', content_type: 'image/jpeg')
sports_array << basketball

#User photo array
user_photos = [
  "https://images.unsplash.com/photo-1584202532967-6390de14ecac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=693&q=80",
  "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80",
  "https://images.unsplash.com/photo-1552642986-ccb41e7059e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1561677843-39dee7a319ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80",
  "https://images.unsplash.com/photo-1566492031773-4f4e44671857?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1468218457742-ee484fe2fe4c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1353&q=80",
  "https://images.unsplash.com/photo-1588976612067-d015cbbdb38b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1513258496099-48168024aec0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1542327821-87a5f0fb3c9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",
  "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1546961329-78bef0414d7c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1506956191951-7a88da4435e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
  "https://images.unsplash.com/photo-1567612529009-820ed950f3ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1551832717-1d4cff3e1834?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=badminton1350&q=80",
  "https://images.unsplash.com/photo-1498551172505-8ee7ad69f235?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1495846101638-bd8e9a23f8ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1487573884658-a5d3c667584e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1292&q=80",
  "https://images.unsplash.com/photo-1522602724102-7b966b111376?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1573496799652-408c2ac9fe98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1534278221230-84061d5f99da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1573497019418-b400bb3ab074?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1551989745-347c28b620e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjM0MTM2fQ&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1573496799515-eebbb63814f2?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1533781107041-b3b8441e1612?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  "https://images.unsplash.com/photo-1558377235-cbcf67758037?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
]

#Permanent database users
puts "Creating permanent users"
yasir = User.create!(first_name:"Yasir", email:"yasir@yasir.com", password:"123abc")
yasir.user_sports << UserSport.new(sport: badminton, sport_level: 5)
# yasir.user_sports << UserSport.new(sport: sports_array.first, sport_level: rand(1..5))
# yasir.user_sports << UserSport.new(sport: sports_array.sample, sport_level: rand(1..5))
yasir_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: badminton, user: yasir)
file = URI.open('https://ca.slack-edge.com/T02NE0241-USU0VD7HT-67fef747e03e-512')
yasir.avatar.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

sleep(2)

andy = User.create!(first_name:"Andy", email:"andy@andy.com", password:"123abc")
andy.user_sports << UserSport.new(sport: badminton, sport_level: 5)
# andy.user_sports << UserSport.new(sport: sports_array.first, sport_level: rand(1..5))
andy_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: badminton, user: andy)
file = URI.open('https://ca.slack-edge.com/T02NE0241-USHR54MED-a02761655437-512')
andy.avatar.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

sleep(2)

#Temporary database users
puts "Creating temporary users"
user_array = []

5.times do
  name = Faker::Name.first_name
  user = User.create!(first_name: name, email: Faker::Internet.email, password: "123abc")
  user.user_sports << UserSport.new(sport: badminton, sport_level: rand(1..5))
  user_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: badminton, user: user)
  file = URI.open(user_photos.sample)
  user.avatar.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
  user_array << user
end

45.times do
  name = Faker::Name.first_name
  sport = sports_array.sample
  user = User.create!(first_name: name, email: Faker::Internet.email, password: "123abc")
  user.user_sports << UserSport.new(sport: sport, sport_level: rand(1..5))
  user_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: sport, user: user)
  file = URI.open(user_photos.sample)
  user.avatar.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')
  user_array << user
end

#Match bookings
puts "Creating matches"
booking_array = []

booking1 = Booking.create!(sport: sports_array.last, status: 'pending', date: Date.today)
booking1.users = [yasir, andy]

10.times do
  booking = Booking.create!(sport: sports_array.sample, status: 'pending', date: Date.today)
  booking.users = [user_array.sample, user_array.sample]
  booking_array << booking
end

#Post-match reviews of other users
puts "Creating reviews"
review_content = ["Awesome game, punctual",
  "Great fun, quick to reply",
  "Skill matches their stated level",
  "Felt at ease, fun game!",
  "A little late, but good player",
  "Waited 15 mins, had fun when they turned up",
  "Quick to respond, good game!",
  "Player's skill matched mine",
  "Had a fun, social game, would play again!",
  "Definitely would play again",
  "Very talented player",
  "Good match of skills",
  "I had a great time! Let's play again soon",
  "It took a while to organise, but once we got there it was fun",
  "Great fun!  We've already agreed on another time to play.",
  "So much fun!!!",
  "Highly competitive game",
  "30 mins late",
  "Loved it!  Talented player",
  "Good fun, and made a new friend!",
]

100.times do
  review = Review.create!(content: review_content.sample, rating: rand(2..5), reviewer: user_array.sample, reviewee: user_array.sample, booking: booking_array.sample)
end

review1 = Review.create!(content:"Awesome game, punctual", rating:4, reviewer: user_array.sample, reviewee: yasir, booking: booking_array.sample)
review2 = Review.create!(content:"Had a fun, social game, would play again!", rating:4, reviewer: user_array.sample, reviewee: yasir, booking: booking_array.sample)
review3 = Review.create!(content:"Player's skill matched mine", rating:5, reviewer: user_array.sample, reviewee: yasir, booking: booking_array.sample)

review4 = Review.create!(content:"Good match of skills", rating:5, reviewer: user_array.sample, reviewee: andy, booking: booking_array.sample)
review5 = Review.create!(content:"Great fun, quick to reply", rating:3, reviewer: user_array.sample, reviewee: andy, booking: booking_array.sample)
review6 = Review.create!(content:"Highly competitive game", rating:4, reviewer: user_array.sample, reviewee: andy, booking: booking_array.sample)

puts "Finished seeding"
