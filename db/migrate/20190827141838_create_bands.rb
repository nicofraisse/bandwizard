class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :name
      t.text :bio
      t.string :address
      t.string :youtube_link
      t.string :personal_website
      t.string :soundcloud_link
      t.boolean :is_live
      t.boolean :is_recording
      t.boolean :is_jamming
      t.boolean :is_composition
      t.boolean :is_cover
      t.boolean :is_pro

      t.timestamps
    end
  end
end
