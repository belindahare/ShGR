class AddColumnGrocerIdToNeeds < ActiveRecord::Migration
  def change
    add_column :needs, :grocer_id, :integer
  end
end
