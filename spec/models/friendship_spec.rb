require 'rails_helper'

describe Friendship, type: :model do
  context "on a new friendship" do
    it "stores users who have added each other as friends" do
      u = User.create name: 'kenny', email:'kenny@gmail.com', password: 'password', password_confirmation: 'password'
      u2 = User.create name: 'cartman', email:'cartman@gmail.com', password: 'password', password_confirmation: 'password'
      Friendship.create user_id: u.id, friend_id: u2.id

      expect(u.friends).to eq [u2]
    end
  end
end
