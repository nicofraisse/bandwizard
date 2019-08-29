class CreateStarredUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :starred_users do |t|

      t.timestamps
    end
  end
end
