# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
Category.destroy_all
User.destroy_all

sports = Category.create!(name: "Sports")
eating = Category.create!(name: "Eating")
evening = Category.create!(name: "Evening")
drinking = Category.create!(name: "Drinking")
weekend = Category.create!(name: "Weekend")
outdoor = Category.create!(name: "Outdoor")
indoor = Category.create!(name: "Indoor")
restaurant = Category.create!(name: "Restaurant")
bar = Category.create!(name: "Bar")
beach = Category.create!(name: "Beach")
park = Category.create!(name: "Park")

marloes = User.create!(email: "marloes@email.com", password: "ThisPassword")

event1 = Event.create!(name: "Cycling", description: "Cycle to the beach", location: "Haarlem", price: 2.00, capacity: 10, includes_food: true, includes_drinks: true, starts_at: "2017-04-02", ends_at: "2017-04-02", user: marloes, categories: [sports, beach, outdoor])
event2 = Event.create!(name: "Hiking", description: "Hike to the park", location: "Amsterdam", price: 10.00, capacity: 20, includes_food: true, includes_drinks: false, starts_at: "2017-04-02", ends_at: "2017-04-02", user: marloes, categories: [park, sports, outdoor])
event3 = Event.create!(name: "Drink Beer", description: "Enjoy your friday afternoon with a cold one", location: "Bar", price: 10.00, capacity: 50, includes_food: false, includes_drinks: true, starts_at: "2017-04-02", ends_at: "2017-04-02", user: marloes, categories: [evening, drinking, bar])
