require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :guesses
  has_many :rounds
  has_many :decks, through: :rounds

  # validates :username, presence: true, uniqueness: true
  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true
  # validates :password_confirmation, length: { minimum: 2 }
  # validates_confirmation_of :password, :confirm => :password_confirmation

  attr_accessor :password_confirmation

  # I think there is a validation you can use for pw confirmation:
  # validates_confirmation_of :password_confirmation

  # I dont think this is being used.
  # validate :password_confirmation_matches
  def password_confirmation_matches
    unless password_confirmation == self.password
      errors.add(:password_confirmation, "must match password")
    end
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def decks_played
    rounds = rounds.all.order(:deck_id)
    decks_played = {}
    rounds.each do |round|
      # Deck is already in the hash
      if decks_played.has_key?(round.deck_id)
        decks_played[round.deck_id] << round
      # Deck is not in the hash
      else
        decks_played[round.deck_id] = []
        decks_played[round.deck_id] << round
      end
    end
  end
end
