class AddUnreadToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :unread, :boolean, default: true
  end
end
