class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.integer :grocer_id
      t.string :item
      t.integer :quantity
      t.integer :volunteer_organization_id
    end
  end
end
