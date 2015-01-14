class AddAttachmentMusicToAudios < ActiveRecord::Migration
  def self.up
    change_table :audio do |t|
      t.attachment :music
    end
  end

  def self.down
    remove_attachment :audio, :music
  end
end
