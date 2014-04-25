class Question < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  attr_accessible :title, :body
end