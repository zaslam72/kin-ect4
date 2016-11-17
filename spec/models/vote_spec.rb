require 'rails_helper'

RSpec.describe Vote, type: :model do
  context "on a new friendship" do
    it "stores users who have added each other as friends" do
      category = Category.create(name: "Mind Games")
      u = User.create name: 'bob', email:'bob@gmail.com', password: 'password', password_confirmation: 'password'
      game = Game.create title: "Chess", body: "A Strategy game", num_players: 2, category_id: category.id
      v = game.votes.create(user_id: u.id, upvote: true)
      expect(game.votes.first).to eq v
    end
  end
end
