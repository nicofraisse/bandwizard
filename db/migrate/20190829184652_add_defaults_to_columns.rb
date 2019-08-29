class AddDefaultsToColumns < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :is_live, true
    change_column_default :users, :is_recording, true
    change_column_default :users, :is_jamming, true
    change_column_default :users, :is_composition, true
    change_column_default :users, :is_covers, true
    change_column_default :bands, :is_live, true
    change_column_default :bands, :is_recording, true
    change_column_default :bands, :is_jamming, true
    change_column_default :bands, :is_composition, true
    change_column_default :bands, :is_cover, true
  end
end
