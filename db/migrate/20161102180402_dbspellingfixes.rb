class Dbspellingfixes < ActiveRecord::Migration[5.0]
  def change
    rename_column(:artists, :password_diagest, :password_digest)
    rename_column(:artists, :imgage_url, :image_url)
  end
end
