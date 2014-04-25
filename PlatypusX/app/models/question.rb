class Question < ActiveRecord::Base
  # validates :question, prescence: :true
  attr_accessible :title, :body
end