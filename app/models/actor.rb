class Actor < ApplicationRecord
    belongs_to :user
has_many :scenes
has_many :movies, through: :scenes
end 
