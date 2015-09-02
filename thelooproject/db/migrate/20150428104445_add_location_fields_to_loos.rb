class AddLocationFieldsToLoos < ActiveRecord::Migration
  def change
    add_column :loos, :formatted_address, :text
    add_column :loos, :postal_code, :string
    add_column :loos, :locality, :string
    add_column :loos, :country, :string
    add_column :loos, :state, :string
    add_column :loos, :administrative_area_level_1, :string
  end
end
