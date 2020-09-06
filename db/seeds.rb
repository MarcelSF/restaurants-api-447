# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning DB'
Restaurant.destroy_all
User.destroy_all

puts 'Creating Users'
marcel = User.create(password: 123456, email: 'marcel@gmail.com')
milene = User.create(password: 123456, email: 'milene@gmail.com')

puts 'Creating Restaurants'
10.times do
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address , user: User.all.sample)
end
