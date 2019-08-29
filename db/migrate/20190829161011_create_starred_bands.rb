class CreateStarredBands < ActiveRecord::Migration[5.2]
  def change
    create_table :starred_bands do |t|

      t.timestamps
    end
  end
end
