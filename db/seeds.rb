# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require 'open-uri'


puts "Cleaning the database............................................"
Booking.destroy_all
Event.destroy_all
User.destroy_all
puts "Done ............................................................"


categories = ['Wedding', 'Funeral', 'Graduation', 'Birthday Party', 'Family Gathering', 'Work Event', 'Class Reunion', 'Space Trip']

puts "Seeding the database ....................................."

#################### 10 hardcoded users ####################

user1photo = URI.open("https://source.unsplash.com/DItYlc26zVI/600x300")
user1 = User.new(
  {
    email: "brandon@test.com",
    first_name: "Brandon",
    last_name: Faker::Name.last_name,
    user_name: "brandon",
    bio: "Hey there, I'm Brandon, a 32-year-old tech enthusiast currently diving headfirst into the world of web development through LeWagon's Ruby on Rails Fullstack Web Development Bootcamp. When I'm not decoding the mysteries of JavaScript or weaving tales with HTML and CSS, you'll likely find me buried in a sci-fi novel or trying to replicate my grandmother's recipes - often with hilarious results (think spaghetti stuck on the ceiling!). I have a soft spot for anything turquoise or cobalt blue - I swear those colors fuel my creativity. My life philosophy? Code hard, laugh often, and never underestimate the power of a good home-cooked meal!",
    password: "123456"
  }
)
user1.photo.attach(io: user1photo, filename: "user1.png", content_type: "image/png")
user1.save!

user2photo = URI.open("https://source.unsplash.com/YRJsMa72UDw/600x300")
user2 = User.new(
  {
    email: "cindy@test.com",
    first_name: "Cindy",
    last_name: Faker::Name.last_name,
    user_name: "cindy",
    bio: "Hello everyone! I'm Cindy, a 28-year-old trailblazer currently steering the ship as the CEO of a Fortune 500 company. When I'm not navigating the bustling corporate landscape, you might catch me practicing yoga in my favorite rose-gold activewear or indulging my guilty pleasure—binge-watching reality TV shows (I can't resist the drama!). My go-to colors? Emerald green and silver—they remind me to stay grounded, but also shine! Life's motto? Lead with passion, maintain balance, and always keep a sense of humor—it makes board meetings way more interesting!",
    password: "123456"
  }
)
user2.photo.attach(io: user2photo, filename: "user2.png", content_type: "image/png")
user2.save!

user3photo = URI.open("https://source.unsplash.com/YUu9UAcOKZ4/600x300")
user3 = User.new(
  {
    email: "david@test.com",
    first_name: "David",
    last_name: Faker::Name.last_name,
    user_name: "david",
    bio: "Hey hey, I'm David, a 29-year-old movie maker who believes that life itself is the greatest script ever written. When I'm not behind the camera creating visual magic, you can find me playing beach volleyball or attempting to beat my high score in vintage arcade games (Pac-Man, I'm looking at you!). I have an inexplicable love for all things indigo and mustard yellow—they just strike the right chord in my creative palette. My mantra? Life's a scene, make every take count, and remember, an impromptu dance-off never hurt anyone!",
    password: "123456"
  }
)
user3.photo.attach(io: user3photo, filename: "user3.png", content_type: "image/png")
user3.save!

user4photo = URI.open("https://source.unsplash.com/zNWlX5Sw9a4/600x300")
user4 = User.new(
  {
    email: "jessica@test.com",
    first_name: "Jessica",
    last_name: Faker::Name.last_name,
    user_name: "jessica",
    bio: "Hello there! I'm Jessica, a driven and enthusiastic learner exploring the vast realms of web development through Ruby on Rails Fullstack Bootcamp at LeWagon. When not submerging myself in coding, you'll find me strumming my guitar or trying to master the art of baking sourdough bread. I love anything mint green or lilac - they give me peace of mind. My personal motto? Work hard, jam harder, and a little bit of extra yeast never hurts!",
    password: "123456"
  }
)
user4.photo.attach(io: user4photo, filename: "user4.png", content_type: "image/png")
user4.save!

user5photo = URI.open("https://source.unsplash.com/hh3ViD0r0Rc/600x300")
user5 = User.new(
  {
    email: "michael@test.com",
    first_name: "Michael",
    last_name: Faker::Name.last_name,
    user_name: "michael",
    bio: "Hey, I'm Michael, a 30-year-old self-proclaimed tech geek currently enrolled in LeWagon's Ruby on Rails Fullstack Web Development Bootcamp. When I'm not immersed in debugging or spinning up new web applications, I enjoy cycling through the city or experimenting with home-brewed coffee (with mixed success, I must admit!). I find inspiration in the colors of dawn and dusk - they spur my creativity. Remember, code passionately, cycle vigorously, and there's always time for a good coffee!",
    password: "123456"
  }
)
user5.photo.attach(io: user5photo, filename: "user5.png", content_type: "image/png")
user5.save!

user6photo = URI.open("https://source.unsplash.com/n5aE6hOY6do/600x300")
user6 = User.new(
  {
    email: "emily@test.com",
    first_name: "Emily",
    last_name: "Doe",
    user_name: "emily",
    bio: "Hey, I'm Emily! Diving into the intricate world of web development with LeWagon's Ruby on Rails Bootcamp. If I'm not neck-deep in code, you'll find me practicing calligraphy or trying my hand at urban gardening. I'm a sucker for anything teal or coral - they brighten my day. Live, laugh, code, that's my motto!",
    password: "123456"
  }
)
user6.photo.attach(io: user6photo, filename: "user6.png", content_type: "image/png")
user6.save!

user7photo = URI.open("https://source.unsplash.com/7YVZYZeITc8/600x300")
user7 = User.new(
  {
    email: "luke@test.com",
    first_name: "Luke",
    last_name: "Brown",
    user_name: "luke",
    bio: "I'm Luke, expanding my horizons with the Ruby on Rails Fullstack Bootcamp at LeWagon. When not wrangling code, I'm an avid mountain climber and a master of chess. I've got a penchant for the colors of the sunset - they inspire my solutions. Life's a climb, but the view is great!",
    password: "123456"
  }
)
user7.photo.attach(io: user7photo, filename: "user7.png", content_type: "image/png")
user7.save!

user8photo = URI.open("https://source.unsplash.com/W7b3eDUb_2I/600x300")
user8 = User.new(
  {
    email: "sophie@test.com",
    first_name: "Sophie",
    last_name: "Taylor",
    user_name: "sophie",
    bio: "Sophie here! Currently unearthing the mysteries of web development at LeWagon's Ruby on Rails Bootcamp. I'm a voracious reader and a salsa dance enthusiast when not programming. My colors of choice are pastel pink and lime green - they keep me energized. Dance like nobody's watching, code like everybody's watching!",
    password: "123456"
  }
)
user8.photo.attach(io: user8photo, filename: "user8.png", content_type: "image/png")
user8.save!

user9photo = URI.open("https://source.unsplash.com/sibVwORYqs0/600x300")
user9 = User.new(
  {
    email: "james@test.com",
    first_name: "James",
    last_name: "White",
    user_name: "james",
    bio: "I'm James, an adventurer in the vast landscape of web development with Ruby on Rails at LeWagon. Off the coding grid, I'm either sketching landscapes or trying to cook the perfect steak. I love the colors of the earth, they ground me. Sketch, sizzle, code!",
    password: "123456"
  }
)
user9.photo.attach(io: user9photo, filename: "user9.png", content_type: "image/png")
user9.save!

user10photo = URI.open("https://source.unsplash.com/rDEOVtE7vOs/600x300")
user10 = User.new(
  {
    email: "lucy@test.com",
    first_name: "Lucy",
    last_name: "Green",
    user_name: "lucy",
    bio: "Lucy here! Exploring the digital universe with LeWagon's Ruby on Rails Fullstack Bootcamp. When not coding, I'm either at a pottery class or playing with my two golden retrievers. I'm all about indigo and sunflower yellow - they feed my creative spirit. Code, create, and play fetch!",
    password: "123456"
  }
)
user10.photo.attach(io: user10photo, filename: "user10.png", content_type: "image/png")
user10.save!

#################### 10 hardcoded events ####################

event1photo = URI.open("https://source.unsplash.com/464ps_nOflw/1200x600")
event1 = Event.new(
  {
    title: 'My sisters big fat greek wedding',
    category: 'Wedding',
    location: 'Eifel Tower, Paris',
    date: Faker::Date.between(from: '2023-05-23', to: '2023-06-24'),
    description: "My sister, the soon-to-be radiant bride, will be saying her vows on the iconic Eiffel Tower in Paris, a landmark that charms the soul and thrills the heart. This magical rendezvous of love and architecture is set to beautifully blend the city of lights and the intimacy of the occasion.

    Imagine the Eiffel Tower, standing tall and proud, as the sun sets, coloring the sky with hues of a vivid orange, melting into a rich blue. Underneath this romantic canopy, my sister, in her elegant attire, will illuminate the night, making for a sight to behold.

    Amidst the captivating views of Paris, the ceremony will be filled with laughter, joyful tears, and promises of everlasting love. Your presence will complete this special day, as we exchange tales, create memories, and celebrate the union of two souls in love.

    Join us for my sister's wedding on the Eiffel Tower, a day that is poised to encapsulate the beauty of Paris and the magic of love. It's more than an invitation—it's a call to be part of an unforgettable moment that will be cherished forever.",
    compensation: Faker::Number.within(range: 10..1000),
    user_id: user1.id
  }
)
event1.photo.attach(io: event1photo, filename: "event1.png", content_type: "image/png")
event1.save!

event2photo = URI.open("https://source.unsplash.com/oMpAz-DN-9I/1200x600")
event2 = Event.new(
  {
    title: 'Zero Gravity Extravaganza',
    category: 'Space Trip',
    location: 'SpaceX Launch Pad, Cape Canaveral',
    date: Faker::Date.between(from: '2023-05-23', to: '2023-06-24'),
    description: "Buckle up for an unforgettable zero gravity dance-off! That's right, we're swapping the traditional dance floor for the awe-inspiring expanse of outer space.

    We'll be moon-walking (literally!) and star-twirling like there's no tomorrow. This isn't just a chance to defy gravity—it's a chance to defy your dance limitations! Who knows? You might even invent a new dance move... The Astro-Boogie, anyone?

    Ever tried a triple backflip while sipping on Tang? Now's your chance! And don't worry about the snacks floating away—we've got astronaut ice cream on deck! So grab your spacesuit and moon boots, and get ready to party like it's 2099! It's going to be a cosmic ride, and your presence will make it even more stellar!",
    compensation: Faker::Number.within(range: 10..1000),
    user_id: user1.id
  }
)
event2.photo.attach(io: event2photo, filename: "event2.png", content_type: "image/png")
event2.save!

event3photo = URI.open("https://source.unsplash.com/eq254Cqvmk8/1200x600")
event3 = Event.new(
  {
    title: 'A Lively Celebration of Uncle Bob',
    category: 'Funeral',
    location: 'The Garden of Tranquility, Springfield',
    date: Faker::Date.between(from: '2023-05-23', to: '2023-06-24'),
    description: "We gather to honor the life and laugh at the memories of Uncle Bob, a man who never knew the meaning of 'quiet.' Known for his booming laughter, bad jokes, and comically oversized hats, Uncle Bob was truly one of a kind.

    In a spirit true to Uncle Bob, this won't be your usual somber funeral. Instead, we're holding a 'Worst Hat Contest' in his honor - Bob would have wanted it that way. So dust off your most atrocious hat, and you could win the title Bob held dear: 'Worst Taste in Hats.'

    Come join us to say goodbye and chuckle in remembrance. After all, it's what Uncle Bob would have done - probably while wearing a hat shaped like a giant rubber duck. Your presence will be greatly appreciated at this celebration of a life well laughed.",
    compensation: Faker::Number.within(range: 10..1000),
    user_id: user3.id
  }
)
event3.photo.attach(io: event3photo, filename: "event3.png", content_type: "image/png")
event3.save!

event4photo = URI.open("https://source.unsplash.com/_JjYYsQPneE/1200x600")
event4 = Event.new(
  {
    title: 'The Great Family Outdoor Bonanza',
    category: 'Family Gathering',
    location: 'Grandma’s backyard, Hometown',
    date: Faker::Date.between(from: '2023-05-23', to: '2023-06-24'),
    description: "Get ready to kick back and let loose at The Great Family Outdoor Bonanza! That's right, we're taking our usual family gathering up a notch. Imagine barbecue sizzling, children giggling, and old Uncle Joe retelling his infamous fishing stories - now in high definition!

    And did I mention the highlight of the event? It's the first annual Sack Race Extravaganza! So, whether you’re an enthusiastic participant or a cheering spectator, you’re in for a treat.

    Make sure to come hungry, because Grandma’s famous cherry pie will be making an appearance! In fact, bring your own specialty dish and we might just crown a new family champion chef. So dust off those old recipes, pack your picnic blanket, and get ready for some quality family time. We can’t wait to see you there!",
    compensation: Faker::Number.within(range: 10..1000),
    user_id: user3.id
  }
)
event4.photo.attach(io: event4photo, filename: "event4.png", content_type: "image/png")
event4.save!

event5photo = URI.open("https://source.unsplash.com/YZsvNs2GCPU/1200x60")
event5 = Event.new(
  {
    title: 'Class of 2023: A Day of Pomp and Circumstance',
    category: 'Graduation',
    location: 'State University Auditorium',
    date: Faker::Date.between(from: '2023-05-23', to: '2023-06-24'),
    description: "Join us as we celebrate the Class of 2023 in all their academic glory. Our bright graduates are stepping onto the stage and into the future. Witness as they trade their textbooks for diplomas and their student caps for the mortarboards of success.

    Come and cheer as we honor our valedictorian, salute our salutatorian, and applaud every graduate who’s strived for academic excellence. Because nothing says 'Congratulations Graduates' quite like a roaring applause from those they hold dear. Your presence will truly enrich this momentous occasion.",
    compensation: Faker::Number.within(range: 10..1000),
    user_id: user5.id
  }
)
event5.photo.attach(io: event5photo, filename: "event5.png", content_type: "image/png")
event5.save!

event6photo = URI.open("https://source.unsplash.com/1VqHRwxcCCw/1200x600")
event6 = Event.new(
  {
    title: 'Tropical Graduation Luau Party',
    category: 'Graduation',
    location: 'Sunny Beach, Miami',
    date: Faker::Date.between(from: '2023-05-23', to: '2023-06-24'),
    description: "Aloha! Come and celebrate the Class of 2023 as they surf their way into the next chapter of life. We're saying goodbye to all-nighters and hello to all-night parties!

    There will be sun, sand, and lots of fun. Trade your gowns and caps for leis and hula skirts! We've got beach games, a bonfire, and a smorgasbord of tropical treats lined up. It’s not just a graduation party—it's an island-style fiesta!

    So, put on your best Hawaiian shirt, grab a pair of flip-flops, and join us as we lei down our books and dance into the future. This party won’t be the same without you!",
    compensation: Faker::Number.within(range: 10..1000),
    user_id: user5.id
  }
)
event6.photo.attach(io: event6photo, filename: "event6.png", content_type: "image/png")
event6.save!

event7photo = URI.open("https://source.unsplash.com/YYXqBwvdoeI/1200x600")
event7 = Event.new(
  {
    title: 'King for a Day: Arthur’s Royal Bash',
    category: 'Birthday Party',
    location: "Arthur's Castle (a.k.a. his house), Camelot Street",
    date: Faker::Date.between(from: '2023-05-23', to: '2023-06-24'),
    description: "Hear ye, hear ye! Thou art cordially invited to a birthday bash fit for a king! Our good friend Arthur is turning 30, and we're celebrating with a royal extravaganza.

    Don thy best medieval garb, be it a dashing knight’s armor or a noble courtier's attire, and prepare for a night of merriment and jest. There shall be a grand feast (in reality, lots of pizza), a jousting tournament (OK, a game of Twister), and perhaps even a dragon or two (well, a cute puppy dressed as a dragon).

    So, polish thy goblets and tighten thy corsets, for a birthday party of regal proportions awaits! Huzzah!",
    compensation: Faker::Number.within(range: 10..1000),
    user_id: user7.id
  }
)
event7.photo.attach(io: event7photo, filename: "event7.png", content_type: "image/png")
event7.save!

event8photo = URI.open("https://source.unsplash.com/ULHxWq8reao/1200x600")
event8 = Event.new(
  {
    title: 'Lisa’s Totally Rad 90s Birthday Bash',
    category: 'Birthday Party',
    location: 'Lisa’s Loft, Downtown',
    date: Faker::Date.between(from: '2023-05-23', to: '2023-06-24'),
    description: "It’s time to dust off your slap bracelets and pull on your baggy jeans - we're throwing Lisa a Totally Rad 90s Birthday Bash!

    Let’s rewind to a time when Saturday mornings were for cartoons, mixtapes were a love language, and our biggest worry was keeping our Tamagotchis alive. There'll be plenty of 90s hits to dance to (Macarena, anyone?), Pogs to trade, and even a contest for the best dressed 90s style icon (here's looking at you, Fresh Prince!).

    So, grab your Game Boy, pack your neon windbreaker, and get ready to party like it’s 1999. We promise it'll be all that and a bag of chips!",
    compensation: Faker::Number.within(range: 10..1000),
    user_id: user7.id
  }
)
event8.photo.attach(io: event8photo, filename: "event8.png", content_type: "image/png")
event8.save!

event9photo = URI.open("https://source.unsplash.com/pf1nvQmXjB8/1200x600")
event9 = Event.new(
  {
    title: '2023 Annual Corporate Gala Dinner',
    category: 'Work Event',
    location: 'Luxury Hotel Ballroom, Downtown',
    date: Faker::Date.between(from: '2023-05-23', to: '2023-06-24'),
    description: "It's that time of year again when we swap our office attire for evening gowns and tuxedos to celebrate the 2023 Annual Corporate Gala Dinner.

    Prepare for a night of indulgence with a sumptuous three-course dinner, inspiring speeches, and the much-awaited Employee of the Year award ceremony. And don't forget our legendary after-dinner dance-off - Who knew Mr. Johnson from Accounting had such smooth moves?

    So, leave your spreadsheets behind, brush up on your ballroom dancing, and join us for an evening of recognition, relaxation, and revelry. Your presence is the key to making this event a success.",
    compensation: Faker::Number.within(range: 10..1000),
    user_id: user9.id
  }
)
event9.photo.attach(io: event9photo, filename: "event9.png", content_type: "image/png")
event9.save!

event10photo = URI.open("https://source.unsplash.com/fNI0K_Mfi7c/1200x600")
event10 = Event.new(
  {
    title: 'Team-Building Adventure in the Great Outdoors',
    category: 'Work Event',
    location: 'National Park, Outside the City',
    date: Faker::Date.between(from: '2023-05-23', to: '2023-06-24'),
    description: "Get ready to swap the photocopier for a zip line and your office chair for a canoe - we're heading outdoors for a Team-Building Adventure Day!

    Think you've got what it takes to win the Wilderness Scavenger Hunt? Can you build a shelter better than our CEO? And who will be the first to find the hidden treasure in the heart of the forest?

    It’s time to show off your survival skills, or at least your ability to roast the perfect marshmallow. So, pack your sense of adventure and join us for a day of team-building fun under the sun. Be there or be square!",
    compensation: Faker::Number.within(range: 10..1000),
    user_id: user9.id
  }
)
event10.photo.attach(io: event10photo, filename: "event10.png", content_type: "image/png")
event10.save!

#################### 25 hardcoded Bookings ####################

##### Event 1

booking = Booking.create!(
  {
    user_id: user2.id,
    event_id: event1.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user3.id,
    event_id: event1.id,
    status: 'pending'
  }
)

##### Event 2

booking = Booking.create!(
  {
    user_id: user4.id,
    event_id: event2.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user6.id,
    event_id: event2.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user8.id,
    event_id: event2.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user10.id,
    event_id: event2.id,
    status: 'pending'
  }
)

##### Event 3

booking = Booking.create!(
  {
    user_id: user1.id,
    event_id: event3.id,
    status: 'confirmed'
  }
)

booking = Booking.create!(
  {
    user_id: user7.id,
    event_id: event3.id,
    status: 'pending'
  }
)

##### Event 4

booking = Booking.create!(
  {
    user_id: user8.id,
    event_id: event4.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user10.id,
    event_id: event4.id,
    status: 'pending'
  }
)

##### Event 5

booking = Booking.create!(
  {
    user_id: user7.id,
    event_id: event5.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user2.id,
    event_id: event5.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user4.id,
    event_id: event5.id,
    status: 'pending'
  }
)

##### Event 6

booking = Booking.create!(
  {
    user_id: user2.id,
    event_id: event6.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user9.id,
    event_id: event6.id,
    status: 'pending'
  }
)

##### Event 7

booking = Booking.create!(
  {
    user_id: user4.id,
    event_id: event7.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user5.id,
    event_id: event7.id,
    status: 'pending'
  }
)

##### Event 8

booking = Booking.create!(
  {
    user_id: user3.id,
    event_id: event8.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user6.id,
    event_id: event8.id,
    status: 'pending'
  }
)

##### Event 9

booking = Booking.create!(
  {
    user_id: user2.id,
    event_id: event9.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user5.id,
    event_id: event9.id,
    status: 'pending'
  }
)

##### Event 10

booking = Booking.create!(
  {
    user_id: user8.id,
    event_id: event10.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user7.id,
    event_id: event10.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user6.id,
    event_id: event10.id,
    status: 'pending'
  }
)

booking = Booking.create!(
  {
    user_id: user5.id,
    event_id: event10.id,
    status: 'pending'
  }
)
