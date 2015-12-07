class Guess < ActiveRecord::Base
  belongs_to :user
  belongs_to :card
  belongs_to :round

  after_initialize :set_solved

  def set_solved
    self.solved ||= false if self.solved.nil?
  end
end
