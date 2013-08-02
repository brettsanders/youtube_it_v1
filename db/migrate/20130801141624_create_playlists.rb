class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :yt_title, :yt_playlist_id, :yt_published
      t.string :custom_background_image_url
      t.integer :user_id
      t.text :yt_summary, :yt_description
      t.string :current_template
      t.timestamps
    end
  end
end
