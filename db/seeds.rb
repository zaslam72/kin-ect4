# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Game.destroy_all
Category.destroy_all

10.times.map do
  User.create!( :name       => Faker::Internet.user_name,
                :email      => Faker::Internet.email,
                :password   => 'password' )
end

categories_arry = ["Card Games", "Strategy", "Classic", "Puzzle", "Adventure", "Dice Games"]
categories_arry.map! do |game|
  Category.create!(:name => game )
end

10.times.map do |i|
  Game.create!(body: Faker::Lorem.paragraph,
				       title: Faker::Lorem.sentence,
               num_players: rand(4),
               category_id: categories_arry.sample.id)
end
