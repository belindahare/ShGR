class Grocer < ActiveRecord::Base
  has_one :volunteer_organization
  has_many :supporters
end
