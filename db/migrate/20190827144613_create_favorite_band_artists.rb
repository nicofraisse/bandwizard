class CreateFavoriteBandArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_band_artists do |t|
      t.references :band, foreign_key: true
      t.references :favorite_artist, foreign_key: true

      t.timestamps
    end
  end
end
