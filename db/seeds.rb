# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Comment.destroy_all
Game.destroy_all
Vote.destroy_all


users = 10.times.map do
  User.create!( :name       => Faker::Internet.user_name,
                :email      => Faker::Internet.email,
                :password   => 'password' )
end


comments = 10.times.map do
  Comment.create!(body: Faker::Lorem.paragraph,
                   game_id: Faker::Lorem.sentence,
                   user: users[i])
end


games = 10.times.map do |i|
  Game.create!(body: Faker::Lorem.paragraph,
				title: Faker::Lorem.sentence,
                 game: questions[i],
                 user: users[i])
end


votes_for_first_comment = 100.times.map do |i|
  Vote.create(value: [1,-1].sample,
              votable: comments[0])
end
