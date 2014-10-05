class Grocer < ActiveRecord::Base
  has_one :volunteer_organization
  has_many :needs, through: :volunteer_organization

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
