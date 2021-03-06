class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation

  has_secure_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create, :message => "cannot be blank"
  validates_presence_of :email
  validates_uniqueness_of :email
end
