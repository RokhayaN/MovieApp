class User < ApplicationRecord
  has_secure_password
  has_many :movies
  has_many :actors
  validates_presence_of :username
  validates_uniqueness_of :username
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 7}

end
