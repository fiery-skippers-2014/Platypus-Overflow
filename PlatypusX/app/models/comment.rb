class Comment < ActiveRecord::Base
  attr_accessible :body, :answer_id
  belongs_to :answer
end