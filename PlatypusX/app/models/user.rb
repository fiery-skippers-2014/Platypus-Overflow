class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email

  validates_uniqueness_of :email, :name
  validates_presence_of :name, :email

end
