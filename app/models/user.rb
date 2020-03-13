class User < ApplicationRecord
    has_many :movies
  validates_presence_of :first_name, :last_name, :password ,:password_confirmation
  validates_uniqueness_of :email
  has_secure_password
end
