class AddColumnVolunteerOrganizationIdToNeeds < ActiveRecord::Migration
  def change
    add_column :needs, :volunteer_organization_id, :integer
  end
end
