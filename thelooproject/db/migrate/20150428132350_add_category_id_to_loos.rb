class AddCategoryIdToLoos < ActiveRecord::Migration
  def change
    add_column :loos, :category_id, :integer
  end
end
