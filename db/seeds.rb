puts "Starting Seed"
yasir = User.create!(first_name:"Yasir", email:"yasir@yasir.com", password:"123abc")
andy = User.create!(first_name:"Andy", email:"andy@andy.com", password:"123abc")
julia = User.create!(first_name:"Julia", email:"julia@julia.com", password:"123abc")
sophie = User.create!(first_name:"Sophie", email:"sophie@sophie.com", password:"123abc")
squash = Sport.create!(name:"Squash")
badminton = Sport.create!(name:"Badminton")
football = Sport.create!(name:"Football")
frisbee = Sport.create!(name:"Frisbee")
yasir.sports = [squash, frisbee]
andy.sports = [badminton, football]
julia.sports = [frisbee]
sophie.sports = [squash, frisbee, badminton, football]
yasir_availability = Availability.create!(start_time:Date.today, end_time:Date.today+1, sport: squash, user:yasir)
andy_availability = Availability.create!(start_time:Date.today, end_time:Date.today+2, sport: badminton, user:andy)
julia_availability = Availability.create!(start_time:Date.today, end_time:Date.today+2, sport: frisbee, user:julia)
sophie_availability = Availability.create!(start_time:Date.today, end_time:Date.today+2, sport: frisbee, user:sophie)
booking1 = Booking.create!(sport: squash, status: 'pending', date: Date.today)
booking1.users = [yasir, andy]
booking2 = Booking.create!(sport: badminton, status: 'pending', date: Date.today+1)
booking2.users = [andy, yasir]
booking3 = Booking.create!(sport: frisbee, status: 'pending', date: Date.today+1)
booking3.users = [julia, sophie]
review1 = Review.create!(content:"Awesome game, punctual", rating:4, reviewer: andy, reviewee: yasir, booking: booking1)
review2 = Review.create!(content:"Great fun, quick to reply", rating:5, reviewer: yasir, reviewee: andy, booking: booking2)
review3 = Review.create!(content:"Talented player", rating:4, reviewer: julia, reviewee: sophie, booking: booking3)
review4 = Review.create!(content:"Would play again anytime!", rating:5, reviewer:sophie, reviewee: julia, booking: booking3)
puts "Finished Seeding"
