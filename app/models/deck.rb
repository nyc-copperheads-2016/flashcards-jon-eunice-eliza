class Deck < ActiveRecord::Base
  validates :name, presence: true

  has_many :cards
  has_many :rounds
  has_many :guesses, through: :cards
end
