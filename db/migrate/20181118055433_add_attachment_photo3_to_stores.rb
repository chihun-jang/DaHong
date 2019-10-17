class AddAttachmentPhoto3ToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.attachment :photo3
    end
  end

  def self.down
    remove_attachment :stores, :photo3
  end
end
