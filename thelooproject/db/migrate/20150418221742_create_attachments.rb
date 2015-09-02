class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :caption
      t.belongs_to :attachable, polymorphic: true

      t.timestamps null: false
    end

    add_index :attachments, [:attachable_id, :attachable_type]
  end
end
