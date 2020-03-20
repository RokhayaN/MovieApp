class Movie < ApplicationRecord
    belongs_to :user
    has_many :scenes
    has_many :actors, through: :scenes
    validates_presence_of :title

end 
