class CreateGrocerVolunteerorganizations < ActiveRecord::Migration
  def change
    create_table :grocer_volunteerorganizations do |t|
      t.integer :grocer_id
      t.integer :volunteer_organization_id
      t.timestamps
    end
  end
end
