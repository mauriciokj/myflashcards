class Kind < ActiveRecord::Base
  COLORS = ['red', 'blue']
  has_many :cards
  belongs_to :user
  validates :name, :color, presence: true
end
