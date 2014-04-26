class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :password, :password_confirmation, :password_digest

  validates_uniqueness_of :email, :name
  validates_presence_of :name, :email

  has_many :questions
  has_many :answers

end