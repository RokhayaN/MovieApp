class Movie < ApplicationRecord
    belongs_to :user
    has_many :scenes
    has_many :actors, through: :scenes
    validates_presence_of :title, :image

  scope :lead, -> { where(acting: 'Lead')}
  scope :supporting_scene, -> { where(acting: 'Supporting Scene')}

   #def self.lead
     #self.where(acting: "Lead")
#end       end
end    