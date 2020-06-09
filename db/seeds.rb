puts "Starting Seed"
yasir = User.create!(first_name:"Yasir", email:"yasir@yasir.com", password:"123abc")
andy = User.create!(first_name:"Andy", email:"andy@andy.com", password:"123abc")
squash = Sport.create!(name:"Squash")
badminton = Sport.create!(name:"Badminton")
football = Sport.create!(name:"Football")
frisbee = Sport.create!(name:"Frisbee")
yasir.sports = [squash, frisbee]
andy.sports = [badminton, football]
yasir_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: squash, user:yasir)
andy_availability = Availability.create!(start_time:Date.today, end_time:Date.today+2, sport: badminton, user:andy)
booking1 = Booking.create!(sport: squash, status: 'pending', date: Date.today)
booking1.users = [yasir, andy]
booking2 = Booking.create!(sport: badminton, status: 'pending', date: Date.today+1)
booking2.users = [andy, yasir]
review1 = Review.create!(content:"Its awesome", rating:4, reviewer: andy, reviewee: yasir, booking: booking1)
review2 = Review.create!(content:"Its filth", rating:2, reviewer: yasir, reviewee: andy, booking: booking2)
puts "Finished Seeding"