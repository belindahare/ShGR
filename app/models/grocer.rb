class Grocer < ActiveRecord::Base
  belongs_to :supporters
  has_one :volunteer_organization
  has_many :supporters
end
