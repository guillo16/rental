# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'destroy database'

Booking.delete_all
Product.delete_all
Category.delete_all
User.delete_all

puts 'creating user'

user1 = User.create! email: 'user1@mail.com', password: 123456
user2 = User.create! email: 'user2@mail.com', password: 123456
user3 = User.create! email: 'user3@mail.com', password: 123456

puts 'creating Categories'

supercars = Category.create! title: 'supercar'
suv = Category.create! title: 'suv'
luxury = Category.create! title: 'luxury'

puts 'creating Products'

category = Category.all.sample
user = User.all.sample


10.times do
Products.create! title: '', description: '', photo: '', category: , user:

