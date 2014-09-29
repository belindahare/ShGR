class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :item
      t.string :description
      t.integer :quantity
      t.timestamps
    end
  end
end
