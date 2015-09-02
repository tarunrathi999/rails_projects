class AddLocationNameToLoos < ActiveRecord::Migration
  def change
    add_column :loos, :location_name, :string
  end
end
