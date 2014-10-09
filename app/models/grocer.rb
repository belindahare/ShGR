class Grocer < ActiveRecord::Base
  has_many :needs

  geocoded_by :address

  
  after_validation :geocode, :if => :address_changed?
end
