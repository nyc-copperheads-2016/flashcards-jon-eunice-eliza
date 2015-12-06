class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many :guesses
  has_many :rounds
  has_many :decks, through: :rounds
end
