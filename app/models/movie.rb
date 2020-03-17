class Movie < ApplicationRecord
    has_many :scenes
    has_many :actors, through: :scenes
    validates_presence_of :titles
end 
