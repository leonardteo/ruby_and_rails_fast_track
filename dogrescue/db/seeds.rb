# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create({
  first_name: "Default",
  last_name: "User",
  email: "user@demo.com",
  password: "test",
  password_confirmation: "test"
})

lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut accumsan dictum sapien, eget imperdiet ante rhoncus id."

Dog.create({
  name: "Katou",
  breed: "Westie",
  age: 10,
  description: "Test Description",
  available: true,
  gender: "M",
  thumbnail: "westie.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Dustin",
  breed: "Shih Tzu",
  age: 5,
  description: "Test Description",
  available: true,
  gender: "M",
  thumbnail: "shih_tzu.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Yeti",
  breed: "Shi Tzu",
  age: 6,
  description: "Test Description",
  available: true,
  gender: "M",
  thumbnail: "shih_tzu_2.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Persia",
  breed: "Doberman",
  age: 2,
  description: "Test Description",
  available: true,
  gender: "F",
  thumbnail: "doberman.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Antilia",
  breed: "Lab",
  age: 0.3,
  description: "Test Description",
  available: true,
  gender: "F",
  thumbnail: "lab.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Elmer",
  breed: "Shih Tzu",
  age: 3,
  description: "Test Description",
  available: true,
  gender: "M",
  thumbnail: "shih_tzu_3.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Mensa",
  breed: "Lab",
  age: 1,
  description: "Test Description",
  available: true,
  gender: "F",
  thumbnail: "lab_2.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Cha-Cha",
  breed: "Bichon",
  age: 4,
  description: "Test Description",
  available: true,
  gender: "F",
  thumbnail: "bichon.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Bundle",
  breed: "Jack Russel",
  age: 2,
  description: "Test Description",
  available: true,
  gender: "F",
  thumbnail: "jack_russell.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Chutney",
  breed: "Yorkie",
  age: 3,
  description: "Test Description",
  available: true,
  gender: "M",
  thumbnail: "yorkie.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Goldilocks",
  breed: "Cocker Spaniel",
  age: 4,
  description: "Test Description",
  available: true,
  gender: "4",
  thumbnail: "cocker_spaniel.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Sugar Puff",
  breed: "Black Lab",
  age: 3,
  description: "Test Description",
  available: true,
  gender: "F",
  thumbnail: "black_lab.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Tumble",
  breed: "Poodle Cross",
  age: 0.4,
  description: "Test Description",
  available: true,
  gender: "M",
  thumbnail: "poodle.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Logan",
  breed: "Basset Hound",
  age: 4,
  description: "Test Description",
  available: true,
  gender: "M",
  thumbnail: "basset_hound.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Dewey",
  breed: "Poodle",
  age: 3,
  description: "Test Description",
  available: true,
  gender: "M",
  thumbnail: "poodle_2.jpg",
  description: lorem_ipsum
})

Dog.create({
  name: "Thom",
  breed: "Cocker Spaniel",
  age: 4,
  description: "Test Description",
  available: true,
  gender: "M",
  thumbnail: "cocker_spaniel_2.jpg",
  description: lorem_ipsum
})

lakota = Dog.create({
  name: "Lakota",
  breed: "Boston Terrier",
  age: 2,
  description: "Test Description",
  available: true,
  gender: "F",
  thumbnail: "boston_terrier.jpg",
  description: lorem_ipsum
})



Enquiry.create({
  dog_id: lakota.id,
  name: "John Doe",
  email: "test@test.com",
  phone: "514 900 9000",
  body: "Hi! I'm interested in Lakota!"
})

Enquiry.create({
  dog_id: lakota.id,
  name: "Jane Doe",
  email: "test2@test.com",
  phone: "514 900 9000",
  body: "Hi! I'm interested in Lakota too!"
})