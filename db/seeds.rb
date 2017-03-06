# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Category.create(name: Faker::Commerce.department(1))
end

150.times do
  Article.create(title: Faker::Hipster.sentence(4), description: Faker::Hipster.paragraph(3), author: Faker::Internet.user_name, email: Faker::Internet.email, price: Faker::Commerce.price, category_id: (rand(10) + 1))
end
