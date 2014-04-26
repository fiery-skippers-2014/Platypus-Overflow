class Question < ActiveRecord::Base


  validates :title, presence: true
  validates :body, presence: true
  attr_accessible :title, :body

  has_many :answers
  has_many :votes, as: :votable
  belongs_to :user

end