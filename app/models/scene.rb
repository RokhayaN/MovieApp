class Scene < ApplicationRecord
    belongs_to :movie, optional: true
    belongs_to :actor, optional: true
   #validates_presence_of :acting, :time, :location
  
   #scope :lead, -> { where(acting: 'Lead')}
   #scope :supporting_scene, -> { where(acting: 'Supporting Scene')}
 
    #def self.lead
     # self.where(acting: "Lead")
    #end
 
    #def self.actor
     # where("actor > 0")
    #end
 
    #def self.supporting_scene
      #self.where(acting: "Supporting Scene")
    #end
 end 
 

