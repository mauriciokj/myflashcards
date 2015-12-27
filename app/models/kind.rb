class Kind < ActiveRecord::Base
  COLORS = ['red', 'blue', 'yellow', 'grey', 'green']
  has_many :cards
  belongs_to :user
  validates :name, :color, presence: true
end
