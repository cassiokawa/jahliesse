class AddAttachmentCapaToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :capa
    end
  end

  def self.down
    remove_attachment :books, :capa
  end
end
