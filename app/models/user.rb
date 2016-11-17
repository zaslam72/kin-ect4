class User < ApplicationRecord
  has_secure_password

  has_many :subscriptions
  has_many :games, through: :subscriptions
  has_many :comments
  has_many :votes
  has_many :friendships
  has_many :friends, through: :friendships

  validates_presence_of :name
  validates_presence_of :email

  # validates :password, confirmation: true
  validates_uniqueness_of :name
  validates_uniqueness_of :email
end
