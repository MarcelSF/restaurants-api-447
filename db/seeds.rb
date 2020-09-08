# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning DB'
Comment.destroy_all
Restaurant.destroy_all
User.destroy_all


puts 'Creating Users'
marcel = User.create(password: 123456, email: 'marcel@gmail.com')
milene = User.create(password: 123456, email: 'milene@lewagon.com')

puts 'Creating Restaurants'
3.times do
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address , user: User.all.sample)
end

5.times do
  Comment.create(user: milene, restaurant: Restaurant.all.sample, content: ['Very good', 'Hate it'].sample)
end
