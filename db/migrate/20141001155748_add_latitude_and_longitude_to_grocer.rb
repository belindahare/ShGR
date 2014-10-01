class AddLatitudeAndLongitudeToGrocer < ActiveRecord::Migration
  def change
    add_column :grocers, :latitude, :float
    add_column :grocers, :longitude, :float
  end
end
