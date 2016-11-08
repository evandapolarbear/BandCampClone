class AddBlurb < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :blurb, :string
  end
end
