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

Dog.create({
  name: "Katou",
  breed: "Westie Cross",
  age: 10,
  description: "Test Description",
  available: true
})

Dog.create({
  name: "Dustin",
  breed: "Shih Tzu Cross",
  age: 5,
  description: "Test Description",
  available: true
})