class Card < ActiveRecord::Base
  belongs_to :user
  belongs_to :kind
  validates :question, :answer, :kind, presence: true
  delegate :color, to: :kind
  delegate :name, to: :kind

  def custon_title
    title || question
  end

  def valid_answer(my_answer)
    case_sensitive? ? my_answer == answer : my_answer.upcase == answer.upcase
  end

  def increase_number_of_times_played
    self.number_of_times_played += 1
    self.save
  end

  def increase_number_of_correct_answers
    self.number_of_correct_answers += 1
    self.save
  end

  def increase_number_of_errors
    self.number_of_errors += 1
    self.save
  end
end
