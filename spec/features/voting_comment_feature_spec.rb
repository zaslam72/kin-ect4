# without stubbing
require 'rails_helper'

describe Vote, type: :feature do
  let(:user){ User.create(name: 'billy', email:'billy@gmail.com', password: 'password', password_confirmation: 'password')}
  let(:game){ Game.create(title: "Chess", body: "A Strategy game", num_players: 2, category_id: 154)}
  let(:comment){ Comment.create( body: "blah", user_id: user.id, game_id: game.id )}

  context "upvote button" do
    it "creates a vote with 'upvote: true' if +1 is clicked " do
      binding.pry
      vote = Vote.create(user_id: user.id, votable_id: comment.id, votable_type: 'Comment', upvote: true)
      expect(comment.votes.first).to eq vote
    end
  end
end

#
# # with stubbing
# describe Vote, type: :feature do
#   let(:user){ User.create(name: 'billy', email:'billy@gmail.com', password: 'password', password_confirmation: 'password')}
#   let(:game){ Game.create(title: "Chess", body: "A Strategy game", num_players: 2, category_id: 154)}
#   let(:comment){ Comment.create( body: "blah", user_id: user.id, game_id: game.id )}
#
#   context "when voting on a comment" do
#     it "changes the upvote to 'true' " do
#       vote = stub(:upvote => true)
#       expect(comment.votes.first).to eq vote
#     end
#   end
# end
