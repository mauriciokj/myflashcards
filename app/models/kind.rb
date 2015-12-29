class Kind < ActiveRecord::Base
  COLORS = ['red', 'blue', 'yellow', 'grey', 'green']
  has_many :cards
  belongs_to :user
  validates :name, :color, presence: true

  def number_of_times_played
    self.cards.sum(:number_of_times_played)
  end

  def number_of_correct_answers
    self.cards.sum(:number_of_correct_answers)
  end

  def number_of_errors
    self.cards.sum(:number_of_errors)
  end
end
