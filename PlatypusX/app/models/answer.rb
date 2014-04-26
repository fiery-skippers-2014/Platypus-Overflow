class Answer < ActiveRecord::Base
  attr_accessible :response, :question_id
  belongs_to :question
  validates_uniqueness_of :response

end