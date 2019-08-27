class CreateBandPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :band_photos do |t|
      t.string :photo
      t.references :band, foreign_key: true

      t.timestamps
    end
  end
end
