class Question < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  attr_accessible :title, :body

  has_many :votes, as: :votable
end