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

supercars = Category.create! title: 'supercar', photo: 'https://images.unsplash.com/photo-1566024381391-173a6ba408c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80'
suv = Category.create! title: 'suv', photo: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-audi-q5-mmp-1-1566497427.jpg?crop=0.668xw:0.710xh;0.119xw,0.181xh&resize=640:*'
luxury = Category.create! title: 'luxury', photo: 'https://images.unsplash.com/photo-1471289549423-04adaecfa1f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2153&q=80'

puts 'creating Products'

category = Category.all
user = User.all
photo = ['https://images.unsplash.com/photo-1546768292-fb12f6c92568?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  'https://images.unsplash.com/photo-1535732820275-9ffd998cac22?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1570294646112-27ce4f174e38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2068&q=80',
  'https://images.unsplash.com/flagged/photo-1553505192-acca7d4509be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1067&q=80'
]

10.times do
  Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: category.sample , user: user.sample
end
puts 'finish seeds'
