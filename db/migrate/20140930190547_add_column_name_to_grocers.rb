class AddColumnNameToGrocers < ActiveRecord::Migration
  def change
    add_column :grocers, :name, :string
    add_column :grocers, :address, :string
    add_column :grocers, :city, :string
    add_column :grocers, :state, :string
    add_column :grocers, :zip, :string
    add_column :grocers, :volunteer_organization_id, :integer
  end
end
