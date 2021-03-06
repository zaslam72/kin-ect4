class Game < ApplicationRecord
  has_many :comments
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :votes, as: :votable

  belongs_to :category
end
