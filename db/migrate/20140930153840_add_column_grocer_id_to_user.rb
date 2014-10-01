class AddColumnGrocerIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :grocer_id, :integer
  end
end
