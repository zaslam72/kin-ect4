require 'rails_helper'

describe User do
  describe "Validations" do
    context "on a new user" do

      it "should not be valid without a username" do
        user = User.new name: nil, email: nil, password: nil, password_confirmation: nil
        expect(user).not_to be_valid
      end

      it "should not be valid without a email" do
        user = User.new password: nil, password_confirmation: nil, email: nil
        expect(user).not_to be_valid
      end

      it "should not be valid without a password" do
        user = User.new password: nil, password_confirmation: nil
        expect(user).not_to be_valid
      end


      it "should not be valid with a confirmation mismatch" do
        user = User.new password: 'short', password_confirmation: 'long'
        expect(user).not_to be_valid
      end
    end

    context "on an existing user" do
      let(:user) do
        u = User.create name: 'punk', email:'punk@gmail.com', password: 'password', password_confirmation: 'password'
        User.find u.id
      end

      it "should be valid with (valid) password" do
        user.password = user.password_confirmation = "password"
        expect(user).to be_valid
      end


      it "should be valid with (valid) email" do
        user.password = user.password_confirmation = "long@gmail.com"
        expect(user).to be_valid
      end
    end
  end
end
