class VolunteerOrganization < ActiveRecord::Base
  belongs_to :grocer
  has_one :list, through: :grocer
end
