class CreateVolunteerOrganizations < ActiveRecord::Migration
  def change
    create_table :volunteer_organizations do |t|

      t.timestamps
    end
  end
end
