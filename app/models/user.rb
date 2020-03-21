class User < ApplicationRecord
  has_secure_password
  has_many :movies
  has_many :actors
  validates_presence_of :username
  validates_uniqueness_of :username
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 7}


  def self.find_or_create_by_omniauth(auth_hash)
    self.where(email: auth_hash['info']['username']).first_or_create do |user|
        user.username = auth_hash['uid']
        user.password = SecureRandom.hex
    end
  end
end
