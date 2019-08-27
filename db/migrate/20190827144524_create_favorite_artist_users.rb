class CreateFavoriteArtistUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_artist_users do |t|
      t.references :favorite_artist, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
