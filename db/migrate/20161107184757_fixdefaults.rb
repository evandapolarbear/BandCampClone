class Fixdefaults < ActiveRecord::Migration[5.0]
  def up
    change_column :artists, :image_url, :string, default: 'http://www.sessionlogs.com/media/icons/defaultIcon.png'
    change_column :artists, :banner_url, :string, default: 'http://wallpapersdsc.net/wp-content/uploads/2016/09/Coffee-Beans-Wallpaper.jpg'
  end
end
