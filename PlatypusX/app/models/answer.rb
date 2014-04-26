class Answer < ActiveRecord::Base
  attr_accessible :response, :question_id
  validates_uniqueness_of :response

  has_many :votes, as: :votable
  belongs_to :question
  belongs_to :user

end