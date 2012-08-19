class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password_digest, :password, :password_confirmation

  has_secure_password
end
