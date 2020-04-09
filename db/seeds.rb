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

buenos_aires = Category.create! title: 'Buenos Aires', photo: 'https://images.unsplash.com/photo-1545424435-010aa04d91cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80'
nueva_york = Category.create! title: 'New York', photo: 'https://images.unsplash.com/photo-1518235506717-e1ed3306a89b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80'
londres = Category.create! title: 'London', photo: 'https://images.unsplash.com/photo-1488747279002-c8523379faaa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80'
paris = Category.create! title: 'Paris', photo: 'https://images.unsplash.com/photo-1431274172761-fca41d930114?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80'
roma = Category.create! title: 'Roma', photo: 'https://images.unsplash.com/photo-1529260830199-42c24126f198?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1655&q=80'
tokyo = Category.create! title: 'Tokyo', photo: 'https://images.unsplash.com/photo-1513407030348-c983a97b98d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1952&q=80'

puts 'creating Products'

category = Category.all
user = User.all
photo = ['https://images.unsplash.com/photo-1546768292-fb12f6c92568?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  'https://images.unsplash.com/photo-1535732820275-9ffd998cac22?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1570294646112-27ce4f174e38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2068&q=80',
  'https://images.unsplash.com/flagged/photo-1553505192-acca7d4509be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1067&q=80'
]


# Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: category.sample ,address: , user: user.sample

Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: buenos_aires ,address: 'Avenida del Libertador 2034, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: buenos_aires ,address: 'Avenida del Libertador 1000, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: buenos_aires ,address: 'Avenida Presidente Figueroa Alcorta, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: buenos_aires ,address: 'Avenida Callao, Buenos Aires, Ciudad Autónoma de Buenos Aires, Argentina', user: user.sample

Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: nueva_york ,address: '5th Avenue–59th Street, New York City, Estados Unidos de América', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: nueva_york ,address: 'Madison Square Garden, New York City, Estados Unidos de América', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: nueva_york ,address: 'World Trade Center, New York City, Estados Unidos de América', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: nueva_york ,address: 'Central Park Carousel, New York City, Estados Unidos de América', user: user.sample



Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: londres ,address: 'Big Ben, City of Westminster, Greater London, Reino Unido' , user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: londres ,address: 'Piccadilly Circus, City of Westminster, Greater London, Reino Unido', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: londres ,address: 'Abadía de Westminster., City of Westminster, Greater London, Reino Unido', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: londres ,address: 'Hyde Park Corner, City of Westminster, Greater London, Reino Unido', user: user.sample


Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: paris ,address: 'Torre Eiffel, París, Île-de-France, Francia', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: paris ,address: 'Champs Élysées, París, Île-de-France, Francia', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: paris ,address: 'Opéra Garnier, París, Île-de-France, Francia', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: paris ,address: 'Place Charles de Gaulle, Paris 8e Arrondissement, Île-de-France, Francia', user: user.sample

Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: roma ,address: 'Coliseo, Roma, Lazio, Italia' , user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: roma ,address: 'Fuente de Trevi, Roma, Lazio, Italia' , user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: roma ,address: 'Vaticano, Emilia-Romagna, Italia', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: roma ,address: 'Roma, Lazio, Italia', user: user.sample

Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: tokyo ,address: 'Tokio, 東京都, Japón', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: tokyo ,address: 'Torre de Tokio, 南青山6, 東京都, Japón', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: tokyo ,address: 'Tokio, 東京都, Japón', user: user.sample
Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: tokyo ,address: 'Hamura city park path, Tokio, 東京都, Japón', user: user.sample
# Product.create! title: Faker::Vehicle.make_and_model, description: Faker::Vehicle.standard_specs , photo: photo.sample, category: ,address: , user: user.sample

puts 'finish seeds'

















