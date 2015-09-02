class AddAttachmentPhotoToLoos < ActiveRecord::Migration
  def self.up
    change_table :loos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :loos, :photo
  end
end
