class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses

  # def user=(user_obj)
  # end

  # def user
  # end

  def next_card
    guesses.where(solved: false).order(:id)
  end
end
