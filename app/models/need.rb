class Need < ActiveRecord::Base
  belongs_to :volunteer_organization
  has_many :grocers, through: :volunteer_organizations
end
