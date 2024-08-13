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
  address: "123 Maple Street, Springfield, IL 62704, USA",
  phone_number: "06-41-82-21-85",
  email: "john.doe@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/8090137/pexels-photo-8090137.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user2 = User.create(
  first_name: "Jane",
  last_name: "Smith",
  address: "456 Oak Avenue, Columbus, OH 43016, USA",
  phone_number: "06-41-82-21-85",
  email: "jane.smith@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/2471148/pexels-photo-2471148.jpeg"
)
user3 = User.create(
  first_name: "Michael",
  last_name: "Johnson",
  address: "789 Pine Road, Madison, WI 53703, USA",
  phone_number: "06-41-82-21-85",
  email: "michael.johnson@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/5490276/pexels-photo-5490276.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user4 = User.create(
  first_name: "Emily",
  last_name: "Davis",
  address: "321 Birch Boulevard, Raleigh, NC 27601, USA",
  phone_number: "06-41-82-21-85",
  email: "emily.davis@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/8993561/pexels-photo-8993561.jpeg?auto=compress&cs=tinysrgb&w=800"
)
user5 = User.create(
  first_name: "David",
  last_name: "Wilson",
  address: "654 Cedar Lane, Denver, CO 80203, USA",
  phone_number: "06-41-82-21-85",
  email: "david.wilson@example.com",
  password: "password123",
  profile_picture: "https://media.istockphoto.com/id/2157069693/fr/photo/homme-souriant-avec-des-lunettes-assis-dans-un-salon-moderne-avec-fond-d%C3%A9tag%C3%A8re.jpg?s=612x612&w=0&k=20&c=jcOQf8tHTaH4rlMW9_7vwC3rYQr2eTp3wElaqN14H_M="
)
User.create(
  first_name: "Sophia",
  last_name: "Martinez",
  address: "987 Elm Street, Austin, TX 73301, USA",
  phone_number: "06-41-82-21-85",
  email: "sophia.martinez@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/7275385/pexels-photo-7275385.jpeg?auto=compress&cs=tinysrgb&w=800"
)
User.create(
  first_name: "James",
  last_name: "Anderson",
  address: "159 Willow Way, Portland, OR 97201, USA",
  phone_number: "06-41-82-21-85",
  email: "james.anderson@example.com",
  password: "password123",
  profile_picture: "https://media.istockphoto.com/id/1134227880/fr/photo/homme-bel-portant-des-lunettes-et-souriant-d%C3%A9tendu-%C3%A0-lappareil-photo.jpg?s=612x612&w=0&k=20&c=0ioSuRPd5qOqFJG1uW8Vm7atAz-v_KEYo547_1Ki1Cc="
)
User.create(
  first_name: "Olivia",
  last_name: "Thomas",
  address: "753 Cypress Court, San Francisco, CA 94102, USA",
  phone_number: "06-41-82-21-85",
  email: "olivia.thomas@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/5682847/pexels-photo-5682847.jpeg?auto=compress&cs=tinysrgb&w=800"
)
User.create(
  first_name: "William",
  last_name: "Garcia",
  address: "258 Redwood Drive, Seattle, WA 98101, USA",
  phone_number: "06-41-82-21-85",
  email: "william.garcia@example.com",
  password: "password123",
  profile_picture: "https://media.istockphoto.com/id/1319095687/fr/photo/homme-confiant-de-sourire-de-portrait-de-projectile-de-t%C3%AAte-regardant-lappareil-photo.jpg?s=612x612&w=0&k=20&c=Cl7N3arLPnjxh-01QTdY7uhL4oNupLrqSF6I2J83oMM="
)
User.create(
  first_name: "Mia",
  last_name: "Robinson",
  address: "846 Oakwood Lane, Miami, FL 33101, USA",
  phone_number: "06-41-82-21-85",
  email: "mia.robinson@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/8129903/pexels-photo-8129903.jpeg?auto=compress&cs=tinysrgb&w=800"
)
User.create(
  first_name: "Alexander",
  last_name: "Lewis",
  address: "324 Aspen Street, Boston, MA 02108, USA",
  phone_number: "06-41-82-21-85",
  email: "alexander.lewis@example.com",
  password: "password123",
  profile_picture: "https://media.istockphoto.com/id/1329501064/fr/photo/portrait-dun-homme-d%C3%A2ge-moyen-souriant-%C3%A0-la-cam%C3%A9ra.jpg?s=612x612&w=0&k=20&c=DCB0mstz0VA2TEe8f_NRAzdapl8wT0RbUvukNJqaQIs="
)
User.create(
  first_name: "Charlotte",
  last_name: "Walker",
  address: "672 Maplewood Drive, Atlanta, GA 30303, USA",
  phone_number: "06-41-82-21-85",
  email: "charlotte.walker@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/8420889/pexels-photo-8420889.jpeg?auto=compress&cs=tinysrgb&w=800"
)
User.create(
  first_name: "Daniel",
  last_name: "Hall",
  address: "135 Lakeview Road, Chicago, IL 60601, USA",
  phone_number: "06-41-82-21-85",
  email: "daniel.hall@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/6274712/pexels-photo-6274712.jpeg?auto=compress&cs=tinysrgb&w=800"
)
User.create(
  first_name: "Amelia",
  last_name: "Harris",
  address: "489 Magnolia Street, Houston, TX 77002, USA",
  phone_number: "06-41-82-21-85",
  email: "amelia.harris@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/4946515/pexels-photo-4946515.jpeg?auto=compress&cs=tinysrgb&w=800"
)
User.create(
  first_name: "Benjamin",
  last_name: "Young",
  address: "743 Walnut Avenue, Los Angeles, CA 90001, USA",
  phone_number: "06-41-82-21-85",
  email: "benjamin.young@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/5792641/pexels-photo-5792641.jpeg?auto=compress&cs=tinysrgb&w=800"
)
User.create(
  first_name: "Ava",
  last_name: "King",
  address: "912 Dogwood Lane, Dallas, TX 75201, USA",
  phone_number: "06-41-82-21-85",
  email: "ava.king@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/4420634/pexels-photo-4420634.jpeg?auto=compress&cs=tinysrgb&w=800"
)
User.create(
  first_name: "Joseph",
  last_name: "Wright",
  address: "102 Oakridge Court, Philadelphia, PA 19102, USA",
  phone_number: "06-41-82-21-85",
  email: "joseph.wright@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/5378700/pexels-photo-5378700.jpeg?auto=compress&cs=tinysrgb&w=800"
)
User.create(
  first_name: "Isabella",
  last_name: "Lopez",
  address: "567 Highland Road, Phoenix, AZ 85001, USA",
  phone_number: "06-41-82-21-85",
  email: "isabella.lopez@example.com",
  password: "password123",
  profile_picture: "https://images.pexels.com/photos/5615665/pexels-photo-5615665.jpeg?auto=compress&cs=tinysrgb&w=800"
)
User.create(
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
  availability: "2024-09-01"
)
chef3 = Chef.create(
  user_id: user3.id,
  specialties: ["Italian Cuisine"],
  availability: "2024-09-15"
)
chef4 = Chef.create(
  user_id: user4.id,
  specialties: ["French Cuisine", "Spanish Cuisine"],
  availability: "2024-10-01"
)
chef2 = Chef.create(
  user_id: user2.id,
  specialties: ["Chinese Cuisine", "Japanese Cuisine"],
  availability: "2024-10-15"
)

chef5 = Chef.create(
  user_id: user5.id,
  specialties: ["Thailand Cuisine"],
  availability: "2024-10-15"
)

booking1 = Booking.create(
  start_date: "2024-07-10",
  end_date: "2024-07-12",
  price: 350,
  specialties: "British Cuisine",
  message: "Amazing experience! The Beef Wellington was cooked to perfection.",
  status: "Pending",
  user_id: user1.id,
  chef_id: chef1.id
)
booking2 = Booking.create(
  start_date: "2024-08-01",
  end_date: "2024-08-03",
  price: 250,
  specialties: "Italian Cuisine",
  message: "Delicious pasta and great atmosphere. Highly recommend!",
  status: "Pending",
  user_id: user3.id,
  chef_id: chef5.id
)
booking3 = Booking.create(
  start_date: "2024-09-15",
  end_date: "2024-09-17",
  price: 500,
  specialties: "French Cuisine",
  message: "An exquisite dining experience with foie gras and truffles.",
  status: "Pending",
  user_id: user1.id,
  chef_id: chef2.id
)
booking4 = Booking.create(
  start_date: "2024-10-01",
  end_date: "2024-10-02",
  price: 300,
  specialties: "Japanese Cuisine",
  message: "Fresh, local ingredients made for a delightful meal.",
  status: "Completed",
  user_id: user2.id,
  chef_id: chef1.id
)
booking5 = Booking.create(
  start_date: "2024-07-20",
  end_date: "2024-07-22",
  price: 400,
  specialties: "British Cuisine",
  message: "The scallops were out of this world! Worth every penny.",
  status: "Completed",
  user_id: user2.id,
  chef_id: chef2.id
)
booking6 = Booking.create(
  start_date: "2024-08-15",
  end_date: "2024-08-17",
  price: 200,
  specialties: "Italian Cuisine",
  message: "Loved the burgers! A perfect casual dining experience.",
  status: "Completed",
  user_id: user3.id,
  chef_id: chef1.id
)
booking7 = Booking.create(
  start_date: "2024-09-20",
  end_date: "2024-09-21",
  price: 550,
  specialties: "French Cuisine",
  message: "Luxury dining at its finest. The truffle dishes were incredible.",
  status: "Completed",
  user_id: user3.id,
  chef_id: chef3.id
)
booking8 = Booking.create(
  start_date: "2024-10-05",
  end_date: "2024-10-07",
  price: 320,
  specialties: "Japanese Cuisine",
  message: "A fresh take on classic dishes. Loved the farm-to-table concept.",
  status: "Upcoming",
  user_id: user4.id,
  chef_id: chef1.id
)
booking9 = Booking.create(
  start_date: "2024-11-01",
  end_date: "2024-11-03",
  price: 450,
  specialties: "British Cuisine",
  message: "Exceptional service and fantastic food. The Beef Wellington was divine.",
  status: "Upcoming",
  user_id: user4.id,
  chef_id: chef4.id
)
booking10 = Booking.create(
  start_date: "2024-11-10",
  end_date: "2024-11-12",
  price: 230,
  specialties: "Italian Cuisine",
  message: "Looking forward to another great meal. The pasta dishes are always a hit.",
  status: "Upcoming",
  user_id: user5.id,
  chef_id: chef5.id
)

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

p "db successful created"
