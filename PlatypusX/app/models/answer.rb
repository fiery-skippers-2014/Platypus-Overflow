class Answer < ActiveRecord::Base
  attr_accessible :response, :question_id
  belongs_to :question
  validates :response, :unique => true

end
