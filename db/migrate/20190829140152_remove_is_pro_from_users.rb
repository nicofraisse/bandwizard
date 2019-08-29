class RemoveIsProFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :is_pro, :boolean
  end
end
