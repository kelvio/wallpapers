class CreateWallpapers < ActiveRecord::Migration
  def change
    create_table :wallpapers do |t|
      t.string :name
      t.string :description
      t.string :original_url
      t.string :thumb

      t.timestamps
    end
  end
end
