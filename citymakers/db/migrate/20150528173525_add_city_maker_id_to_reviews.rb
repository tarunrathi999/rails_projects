class AddCityMakerIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :city_maker_id, :integer
  end
end
