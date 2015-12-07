class Card < ActiveRecord::Base
  validates :prompt, :answer, presence: true

  has_many :guesses
  has_one :deck


  def answered_correctly? answer
    answer.downcase == @card.answer.downcase
  end
end
