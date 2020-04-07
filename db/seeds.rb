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
photo = ['https://images.unsplash.com/photo-1546768292-fb12f6c92568?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  'https://images.unsplash.com/photo-1535732820275-9ffd998cac22?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1570294646112-27ce4f174e38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2068&q=80',
  'https://images.unsplash.com/flagged/photo-1553505192-acca7d4509be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1067&q=80'
].sample

10.times do
  Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo, category: category , user: user
end
puts 'finish seeds'
