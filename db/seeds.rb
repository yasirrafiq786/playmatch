test_user1 = User.create(first_name: "Harry", last_name: "Potter", location: "Hogwarts", email: "wizard@harry.com", password: "magic_hedwig")
test_user2 = User.create(first_name: "Ron", last_name: "Weasley", location: "The Burrow", email: "wizard@ron.com", password: "magic_pigwidgeon")
test_sport = Sport.create(name: "Quidditch")
test_booking1 = Booking.create(sport: test_sport, date_time: DateTime.now, status: "Pending")
test_booking2 = Booking.create(sport: test_sport, date_time: DateTime.now, status: "Pending")
test_team = Team.create(name: "Griffindor Quidditch Team", booking: test_booking2)
test_review = Review.create(content: "Great fun", rating: 5.0, booking: test_booking1, reviewer: test_user1, reviewee: test_user2)
test_conversation = Conversation.create()
test_message = Message.create(user: test_user1, conversation: test_conversation)
test_availability = Availability.create(start_time: DateTime.now, end_time: DateTime.now+10, sport: test_sport, user: test_user1)

test_booking1.users << test_user1
test_booking1.users << test_user2

test_team.users << test_user1
test_team.users << test_user2

#########
test_sport2 = Sport.create(name: "Soccer")
test_sport3 = Sport.create(name: "Volleyball")
test_sport4 = Sport.create(name: "Table Tennis")

test_sport.users << test_user1
test_sport.users << test_user2

test_sport2.users << test_user1
test_sport3.users << test_user2
