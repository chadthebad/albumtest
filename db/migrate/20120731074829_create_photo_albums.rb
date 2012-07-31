class CreatePhotoAlbums < ActiveRecord::Migration
  def change
    create_table :photo_albums do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
