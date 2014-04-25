class Question < ActiveRecord::Base
  # validates :question, prescence: :true
  attr_accessible :question
end