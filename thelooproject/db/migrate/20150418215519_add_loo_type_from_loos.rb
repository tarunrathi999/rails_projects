class AddLooTypeFromLoos < ActiveRecord::Migration
  def change
    add_column :loos, :loo_type, :string
  end
end
