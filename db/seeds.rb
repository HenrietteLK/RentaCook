#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Review.destroy_all
Booking.destroy_all
Chef.destroy_all
User.destroy_all
p "db created "

user1 = User.create(
  first_name: "Ugo",
  last_name: "Bast",
  address: "15 Rue d'Alésia, 75014 Paris",
  phone_number: "06-41-82-21-85",
  email: "ugo.100hache@example.com",
  password: "password123",
  profile_picture: "data:image/jpeg;base64,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"
)
user2 = User.create(
  first_name: "Jane",
  last_name: "Smith",
  address: "108 Rue de la Tombe Issoire, 75014 Paris",
  phone_number: "06-41-82-21-85",
  email: "jane.smith@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/2471148/pexels-photo-2471148.jpeg"
)
user3 = User.create(
  first_name: "Michael",
  last_name: "Johnson",
  address: "74 Avenue du Général Leclerc, 75014 Paris",
  phone_number: "06-41-82-21-85",
  email: "michael.johnson@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/5490276/pexels-photo-5490276.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user4 = User.create(
  first_name: "Emily",
  last_name: "Davis",
  address: "197 Rue de Rivoli, 75001 Paris",
  phone_number: "06-41-82-21-85",
  email: "emily.davis@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/8993561/pexels-photo-8993561.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user5 = User.create(
  first_name: "David",
  last_name: "Wilson",
  address: "25 Avenue Pierre Brossolette, 92120 Montrouge",
  phone_number: "06-41-82-21-85",
  email: "david.wilson@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/927505/pexels-photo-927505.jpeg"
)
user6 = User.create(
  first_name: "Sophia",
  last_name: "Martinez",
  address: "987 Elm Street, Austin, TX 73301, USA",
  phone_number: "06-41-82-21-85",
  email: "sophia.martinez@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/7275385/pexels-photo-7275385.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user7 = User.create(
  first_name: "James",
  last_name: "Anderson",
  address: "159 Willow Way, Portland, OR 97201, USA",
  phone_number: "06-41-82-21-85",
  email: "james.anderson@example.com",
  password: "password123",
  profile_picture: "https://media.istockphoto.com/id/1134227880/fr/photo/homme-bel-portant-des-lunettes-et-souriant-d%C3%A9tendu-%C3%A0-lappareil-photo.jpg?s=612x612&w=0&k=20&c=0ioSuRPd5qOqFJG1uW8Vm7atAz-v_KEYo547_1Ki1Cc="
)
user8 = User.create(
  first_name: "Olivia",
  last_name: "Thomas",
  address: "753 Cypress Court, San Francisco, CA 94102, USA",
  phone_number: "06-41-82-21-85",
  email: "olivia.thomas@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/5682847/pexels-photo-5682847.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user9 = User.create(
  first_name: "William",
  last_name: "Garcia",
  address: "258 Redwood Drive, Seattle, WA 98101, USA",
  phone_number: "06-41-82-21-85",
  email: "william.garcia@example.com",
  password: "password123",
  profile_picture: "https://media.istockphoto.com/id/1319095687/fr/photo/homme-confiant-de-sourire-de-portrait-de-projectile-de-t%C3%AAte-regardant-lappareil-photo.jpg?s=612x612&w=0&k=20&c=Cl7N3arLPnjxh-01QTdY7uhL4oNupLrqSF6I2J83oMM="
)
user10 = User.create(
  first_name: "Mia",
  last_name: "Robinson",
  address: "846 Oakwood Lane, Miami, FL 33101, USA",
  phone_number: "06-41-82-21-85",
  email: "mia.robinson@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/8129903/pexels-photo-8129903.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user11 = User.create(
  first_name: "Alexander",
  last_name: "Lewis",
  address: "324 Aspen Street, Boston, MA 02108, USA",
  phone_number: "06-41-82-21-85",
  email: "alexander.lewis@example.com",
  password: "password123",
  profile_picture: "https://media.istockphoto.com/id/1329501064/fr/photo/portrait-dun-homme-d%C3%A2ge-moyen-souriant-%C3%A0-la-cam%C3%A9ra.jpg?s=612x612&w=0&k=20&c=DCB0mstz0VA2TEe8f_NRAzdapl8wT0RbUvukNJqaQIs="
)
user12 = User.create(
  first_name: "Charlotte",
  last_name: "Walker",
  address: "672 Maplewood Drive, Atlanta, GA 30303, USA",
  phone_number: "06-41-82-21-85",
  email: "charlotte.walker@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/8420889/pexels-photo-8420889.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user13 = User.create(
  first_name: "Daniel",
  last_name: "Hall",
  address: "135 Lakeview Road, Chicago, IL 60601, USA",
  phone_number: "06-41-82-21-85",
  email: "daniel.hall@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/6274712/pexels-photo-6274712.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user14 = User.create(
  first_name: "Amelia",
  last_name: "Harris",
  address: "489 Magnolia Street, Houston, TX 77002, USA",
  phone_number: "06-41-82-21-85",
  email: "amelia.harris@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/4946515/pexels-photo-4946515.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user15 = User.create(
  first_name: "Benjamin",
  last_name: "Young",
  address: "743 Walnut Avenue, Los Angeles, CA 90001, USA",
  phone_number: "06-41-82-21-85",
  email: "benjamin.young@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/5792641/pexels-photo-5792641.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user16 = User.create(
  first_name: "Ava",
  last_name: "King",
  address: "912 Dogwood Lane, Dallas, TX 75201, USA",
  phone_number: "06-41-82-21-85",
  email: "ava.king@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/4420634/pexels-photo-4420634.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user17 = User.create(
  first_name: "Joseph",
  last_name: "Wright",
  address: "102 Oakridge Court, Philadelphia, PA 19102, USA",
  phone_number: "06-41-82-21-85",
  email: "joseph.wright@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/5378700/pexels-photo-5378700.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user18 = User.create(
  first_name: "Isabella",
  last_name: "Lopez",
  address: "567 Highland Road, Phoenix, AZ 85001, USA",
  phone_number: "06-41-82-21-85",
  email: "isabella.lopez@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/5615665/pexels-photo-5615665.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user19 = User.create(
  first_name: "Matthew",
  last_name: "Scott",
  address: "348 River Street, San Antonio, TX 78201, USA",
  phone_number: "06-41-82-21-85",
  email: "matthew.scott@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/4307869/pexels-photo-4307869.jpeg?auto=compress&cs=tinysrgb&w=800"
)
User.create(
  first_name: "Evelyn",
  last_name: "Green",
  address: "219 Sunrise Drive, Orlando, FL 32801, USA",
  phone_number: "06-41-82-21-85",
  email: "evelyn.green@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/3444087/pexels-photo-3444087.jpeg?auto=compress&cs=tinysrgb&w=800"
)

p User.all

chef1 = Chef.create(
  user_id: user1.id,
  specialties: ["British Cuisine", "French Cuisine"],
  availability: "2024-09-01",
  address: user1.address,
  price_per_day: 200
)
chef3 = Chef.create(
  user_id: user3.id,
  specialties: ["Italian Cuisine"],
  availability: "2024-09-15",
  address: user3.address,
  price_per_day: 40
)
chef4 = Chef.create(
  user_id: user4.id,
  specialties: ["French Cuisine", "Spanish Cuisine"],
  availability: "2024-10-01",
  address: user4.address,
  price_per_day: 12
)
chef2 = Chef.create(
  user_id: user2.id,
  specialties: ["Chinese Cuisine", "Japanese Cuisine"],
  availability: "2024-10-15",
  address: user2.address,
  price_per_day: 50
)
chef5 = Chef.create(
  user_id: user5.id,
  specialties: ["Thailand Cuisine"],
  availability: "2024-10-15",
  address: user5.address,
  price_per_day: 35
)

Chef.create(
  user_id: user6.id,
  specialties: ["Spanish Cuisine", "Turkish Cuisine"],
  availability: "2024-10-15",
  address: user6.address,
  price_per_day: 20
)

Chef.create(
  user_id: user7.id,
  specialties: ["Japanese Cuisine"],
  availability: "2024-10-15",
  address: user7.address,
  price_per_day: 70
)

Chef.create(
  user_id: user8.id,
  specialties: ["British Cuisine", "Belgian Cuisine"],
  availability: "2024-10-15",
  address: user8.address,
  price_per_day: 20
)

Chef.create(
  user_id: user9.id,
  specialties: ["Kurdish Cuisine", "Turkish Cuisine"],
  availability: "2024-10-15",
  address: user9.address,
  price_per_day: 50
)

Chef.create(
  user_id: user10.id,
  specialties: ["American Cuisine", "French Cuisine", "Canadian Cuisine"],
  availability: "2024-10-15",
  address: user10.address,
  price_per_day: 45
)

Chef.create(
  user_id: user11.id,
  specialties: ["Chinese Cuisine", "Vietnamese Cuisine"],
  availability: "2024-10-15",
  address: user11.address,
  price_per_day: 10
)

Chef.create(
  user_id: user12.id,
  specialties: ["Arab Cuisine", "Turkish Cuisine"],
  availability: "2024-10-15",
  address: user12.address,
  price_per_day: 40
)

Chef.create(
  user_id: user13.id,
  specialties: ["French Cuisine", "Italian Cuisine"],
  availability: "2024-10-15",
  address: user13.address,
  price_per_day: 150
)

Chef.create(
  user_id: user14.id,
  specialties: ["Polish Cuisine", "German Cuisine"],
  availability: "2024-10-15",
  address: user14.address,
  price_per_day: 5
)

Chef.create(
  user_id: user15.id,
  specialties: ["Chinese Cuisine"],
  availability: "2024-10-15",
  address: user15.address,
  price_per_day: 15
)

Chef.create(
  user_id: user16.id,
  specialties: ["Korean Cuisine", "Japanese Cuisine"],
  availability: "2024-10-15",
  address: user16.address,
  price_per_day: 80
)

Chef.create(
  user_id: user17.id,
  specialties: ["Spanish Cuisine", "Italian Cuisine"],
  availability: "2024-10-15",
  address: user17.address,
  price_per_day: 20
)

Chef.create(
  user_id: user18.id,
  specialties: ["French Cuisine", "Italian Cuisine"],
  availability: "2024-10-15",
  address: user18.address,
  price_per_day: 50
)

Chef.create(
  user_id: user19.id,
  specialties: ["American Cuisine"],
  availability: "2024-10-15",
  address: user19.address,
  price_per_day: 35
)

p Chef.all

booking1 = Booking.create(
  start_date: "2024-07-10",
  end_date: "2024-07-12",
  total_price: 350,
  specialty: "British Cuisine",
  message: "Amazing experience! The Beef Wellington was cooked to perfection.",
  status: "Pending",
  user_id: user1.id,
  chef_id: chef1.id
)
booking2 = Booking.create(
  start_date: "2024-08-01",
  end_date: "2024-08-03",
  total_price: 250,
  specialty: "Italian Cuisine",
  message: "Delicious pasta and great atmosphere. Highly recommend!",
  status: "Pending",
  user_id: user3.id,
  chef_id: chef5.id
)
booking3 = Booking.create(
  start_date: "2024-09-15",
  end_date: "2024-09-17",
  total_price: 500,
  specialty: "French Cuisine",
  message: "An exquisite dining experience with foie gras and truffles.",
  status: "Pending",
  user_id: user1.id,
  chef_id: chef2.id
)
booking4 = Booking.create(
  start_date: "2024-10-01",
  end_date: "2024-10-02",
  total_price: 300,
  specialty: "Japanese Cuisine",
  message: "Fresh, local ingredients made for a delightful meal.",
  status: "Completed",
  user_id: user2.id,
  chef_id: chef1.id
)
booking5 = Booking.create(
  start_date: "2024-07-20",
  end_date: "2024-07-22",
  total_price: 400,
  specialty: "British Cuisine",
  message: "The scallops were out of this world! Worth every penny.",
  status: "Completed",
  user_id: user2.id,
  chef_id: chef2.id
)
booking6 = Booking.create(
  start_date: "2024-08-15",
  end_date: "2024-08-17",
  total_price: 200,
  specialty: "Italian Cuisine",
  message: "Loved the burgers! A perfect casual dining experience.",
  status: "Completed",
  user_id: user3.id,
  chef_id: chef1.id
)
booking7 = Booking.create(
  start_date: "2024-09-20",
  end_date: "2024-09-21",
  total_price: 550,
  specialty: "French Cuisine",
  message: "Luxury dining at its finest. The truffle dishes were incredible.",
  status: "Completed",
  user_id: user3.id,
  chef_id: chef3.id
)
booking8 = Booking.create(
  start_date: "2024-10-05",
  end_date: "2024-10-07",
  total_price: 320,
  specialty: "Japanese Cuisine",
  message: "A fresh take on classic dishes. Loved the farm-to-table concept.",
  status: "Upcoming",
  user_id: user4.id,
  chef_id: chef1.id
)
booking9 = Booking.create(
  start_date: "2024-11-01",
  end_date: "2024-11-03",
  total_price: 450,
  specialty: "British Cuisine",
  message: "Exceptional service and fantastic food. The Beef Wellington was divine.",
  status: "Upcoming",
  user_id: user4.id,
  chef_id: chef4.id
)
booking10 = Booking.create(
  start_date: "2024-11-10",
  end_date: "2024-11-12",
  total_price: 230,
  specialty: "Italian Cuisine",
  message: "Looking forward to another great meal. The pasta dishes are always a hit.",
  status: "Refused",
  user_id: user5.id,
  chef_id: chef5.id
)

p Booking.all

Review.create(
  rating: 4.8,
  comment: "Incredible experience! The attention to detail in every dish was amazing.",
  user_id: user1.id,
  chef_id: chef1.id,
  booking_id: booking1.id
)
Review.create(
  rating: 4.5,
  comment: "The ambiance was perfect, and the food was delicious. Will definitely return!",
  user_id: user2.id,
  chef_id: chef2.id,
  booking_id: booking2.id
)
Review.create(
  rating: 5.0,
  comment: "Absolutely flawless. Every course was a masterpiece.",
  user_id: user2.id,
  chef_id: chef1.id,
  booking_id: booking3.id
)
Review.create(
  rating: 4.7,
  comment: "Creative and flavorful dishes that left us wanting more.",
  user_id: user1.id,
  chef_id: chef4.id,
  booking_id: booking4.id
)
Review.create(
  rating: 4.9,
  comment: "The seafood was fresh and cooked to perfection. Highly recommend!",
  user_id: user5.id,
  chef_id: chef4.id,
  booking_id: booking5.id
)
Review.create(
  rating: 4.3,
  comment: "Great food, but the wait time was a bit long. Still a good experience.",
  user_id: user4.id,
  chef_id: chef1.id,
  booking_id: booking6.id
)
Review.create(
  rating: 5.0,
  comment: "Unmatched culinary expertise. The meal was a true celebration of flavors.",
  user_id: user5.id,
  chef_id: chef2.id,
  booking_id: booking7.id
)
Review.create(
  rating: 4.6,
  comment: "Beautiful presentation and fresh ingredients. A delightful dining experience.",
  user_id: user3.id,
  chef_id: chef4.id,
  booking_id: booking8.id
)
Review.create(
  rating: 4.9,
  comment: "Excited to book again! The flavors were rich and satisfying.",
  user_id: user2.id,
  chef_id: chef3.id,
  booking_id: booking9.id
)
Review.create(
  rating: 4.7,
  comment: "Anticipating another great meal. Consistently excellent service and food.",
  user_id: user5.id,
  chef_id: chef5.id,
  booking_id: booking10.id
)

p Review.all

p "db successful created"
