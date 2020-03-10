class Actor < ApplicationRecord
has_many :scenes
has_many :movies, through: :scenes
end 
