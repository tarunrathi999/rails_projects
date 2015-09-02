class AddAttachmentAvatarToCityMakers < ActiveRecord::Migration
  def self.up
    change_table :city_makers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :city_makers, :avatar
  end
end
