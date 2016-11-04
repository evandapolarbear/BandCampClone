class RemoveIsPlaying < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :is_playing
  end
end
