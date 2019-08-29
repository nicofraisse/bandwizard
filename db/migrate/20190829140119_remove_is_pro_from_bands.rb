class RemoveIsProFromBands < ActiveRecord::Migration[5.2]
  def change
    remove_column :bands, :is_pro, :boolean
  end
end
