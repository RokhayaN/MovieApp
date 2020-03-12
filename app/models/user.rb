class User < ApplicationRecord
    has_many :movies
  validates_presence_of :first_name, :last_name, :password
  validates_uniqueness_of :email
  has_secure_password
end
