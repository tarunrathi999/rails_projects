class AddCategoryIdToCityMakers < ActiveRecord::Migration
  def change
    add_column :city_makers, :category_id, :integer
  end
end
