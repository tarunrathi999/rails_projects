class RemoveTypeFromLoos < ActiveRecord::Migration
  def change
    remove_column :loos, :type, :string
  end
end
