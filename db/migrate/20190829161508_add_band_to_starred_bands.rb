class AddBandToStarredBands < ActiveRecord::Migration[5.2]
  def change
    add_reference :starred_bands, :band, foreign_key: true
  end
end
