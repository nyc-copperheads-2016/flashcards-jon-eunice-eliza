class Card < ActiveRecord::Base
  validates :prompt, :answer, presence: true

  has_many :guesses
  has_one :deck
end
