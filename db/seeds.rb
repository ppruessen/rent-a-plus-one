# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

categories = ['Wedding', 'Funeral', 'Graduation', 'Birthday Party', 'Family Gathering', 'Work Event', 'Class Reunion', 'Space Trip']

puts "Creating 10 Users and some events and some bookings"
puts "............"

10.times do |number|
  if number == 0
    first_name = "Brandon"
    user = User.create!(
      {
        email: "brandon@test.com",
        first_name: first_name,
        last_name: Faker::Name.last_name,
        user_name: "brandon",
        bio: Faker::Hipster.paragraphs,
        password: "123456"
      }
    )
  else
    first_name = Faker::Name.first_name
    user = User.create!(
      {
        email: Faker::Internet.email(name: first_name),
        first_name: first_name,
        last_name: Faker::Name.last_name,
        user_name: Faker::Internet.user,
        bio: Faker::Hipster.paragraphs,
        password: "123456"
      }
    )
  end
  puts "Created #{user.first_name}"
  rand(0..3).times do
    event = Event.create!(
      {
        title: Faker::BossaNova.song,
        category: categories.sample,
        location: Faker::Mountain.name,
        date: Faker::Date.between(from: '2023-05-23', to: '2023-06-24'),
        description: Faker::GreekPhilosophers.quote,
        compensation: Faker::Number.within(range: 10..1000),
        user_id: user.id
      }
    )
    puts "Created a #{event.category} event hosted by #{user.first_name}"
  end
end

25.times do
  booking = Booking.create!(
    {
      user_id: User.ids.sample,
      event_id: Event.ids.sample,
      status: %w[pending confirmed declined].sample
    }
  )
  user = User.find(booking.user_id)
  event = Event.find(booking.event_id)
end

puts "Created #{User.count} users and #{Event.count} events and #{Booking.count} bookings"
