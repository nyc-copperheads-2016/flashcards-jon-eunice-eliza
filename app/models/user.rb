require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :guesses
  has_many :rounds
  has_many :decks, through: :rounds

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true

  attr_accessor :password_confirmation

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
