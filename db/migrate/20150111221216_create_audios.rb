class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audio do |t|

      t.timestamps null: false
    end
  end
end
