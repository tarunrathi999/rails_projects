class AddLocationNameToCityMakers < ActiveRecord::Migration
  def change
    add_column :city_makers, :location_name, :string
  end
end
