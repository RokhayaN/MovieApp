class CreateScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :scenes do |t|
    t.string :location
    t.string :time
    t.string :acting
    t.integer "user_id"
    t.integer "playlist_id"
      t.timestamps
    end
  end
end
