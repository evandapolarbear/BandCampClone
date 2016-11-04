class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.integer :artist_id, null: false
      t.string :url, null: false
      t.boolean :is_playing, null: false, default: false
      t.timestamps
    end
    add_index :songs, :artist_id
  end
end
