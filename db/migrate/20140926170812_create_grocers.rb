class CreateGrocers < ActiveRecord::Migration
  def change
    create_table :grocers do |t|

      t.timestamps
    end
  end
end
