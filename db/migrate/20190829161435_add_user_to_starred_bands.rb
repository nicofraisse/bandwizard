class AddUserToStarredBands < ActiveRecord::Migration[5.2]
  def change
    add_reference :starred_bands, :user, foreign_key: true
  end
end
