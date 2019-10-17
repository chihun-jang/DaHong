class AddAttachmentPhoto2ToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.attachment :photo2
    end
  end

  def self.down
    remove_attachment :stores, :photo2
  end
end
