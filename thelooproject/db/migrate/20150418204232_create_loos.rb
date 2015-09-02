class CreateLoos < ActiveRecord::Migration
  def change
    create_table :loos do |t|
      t.string :lat
      t.string :lng
      t.string :name
      t.text :description
      t.string :open_hours
      t.string :closing_hours
      t.text :open_closing_note
      t.string :managed_by
      t.string :type
      t.string :genders
      t.integer :no_of_toilets
      t.integer :no_of_bathrooms
      t.integer :no_of_urinals
      t.boolean :paid

      t.timestamps null: false
    end
  end
end
