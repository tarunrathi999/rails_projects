class CreateCityMakers < ActiveRecord::Migration
  def change
    create_table :city_makers do |t|
      t.string :name
      t.text :description
      t.string :lat
      t.string :lng
      t.text :address1
      t.text :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :phone
      t.string :timings
      t.text :note

      t.timestamps null: false
    end
  end
end
