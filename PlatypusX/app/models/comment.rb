class Comment < ActiveRecord::Base
  # why not just make answer polymorphic and get rid of this?
  attr_accessible :body, :answer_id
  belongs_to :answer
end
