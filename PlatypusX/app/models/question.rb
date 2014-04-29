class Question < ActiveRecord::Base
  attr_accessible :title, :body

  has_many :answers

  validates :title, :body, presence: true
end
