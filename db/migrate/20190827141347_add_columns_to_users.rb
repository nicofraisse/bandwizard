class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :full_name, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :address, :string
    add_column :users, :photo, :string
    add_column :users, :soundcloud_link, :string
    add_column :users, :youtube_link, :string
    add_column :users, :personal_website, :string
    add_column :users, :bio, :text
    add_column :users, :is_live, :boolean
    add_column :users, :is_recording, :boolean
    add_column :users, :is_jamming, :boolean
    add_column :users, :is_composition, :boolean
    add_column :users, :is_covers, :boolean
    add_column :users, :is_pro, :boolean
  end
end
