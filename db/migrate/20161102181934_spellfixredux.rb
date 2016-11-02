class Spellfixredux < ActiveRecord::Migration[5.0]
  def change
    rename_column(:artists, :bannder_url, :banner_url)
  end
end
