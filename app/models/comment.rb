class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :votes, as: :votable, dependent: :destroy

  validates_presence_of :body
end
