class Card < ActiveRecord::Base
  belongs_to :user
  belongs_to :kind
  validates :question, :answer, :kind, presence: true
  delegate :color, to: :kind

  def custon_title
    title || question
  end

  def valid_answer(my_answer)
    my_answer == answer
  end
end
