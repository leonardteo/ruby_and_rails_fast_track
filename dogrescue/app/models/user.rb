class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password_digest, :password, :password_confirmation

  has_secure_password

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true, :uniqueness => true

end
