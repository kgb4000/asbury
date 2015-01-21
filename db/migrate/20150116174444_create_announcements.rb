class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :description
      t.string :date

      t.timestamps null: false
    end
  end
end
