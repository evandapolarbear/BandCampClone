class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_diagest, null: false
      t.string :session_token, null: false
      t.string :imgage_url, null: false
      t.string :bannder_url, null: false
      t.timestamps null:false
    end
    add_index :artists, :username, unique: true
    add_index :artists, :email, unique: true
  end
end
