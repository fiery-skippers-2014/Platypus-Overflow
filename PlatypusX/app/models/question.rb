class Question < ActiveRecord::Base

  has_many :answers

  validates :title, presence: true
  validates :body, presence: true
  attr_accessible :title, :body
end