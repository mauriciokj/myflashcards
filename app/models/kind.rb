class Kind < ActiveRecord::Base
  COLORS = ['red', 'blue']
  has_many :cards
  validates :name, :color, presence: true
end
