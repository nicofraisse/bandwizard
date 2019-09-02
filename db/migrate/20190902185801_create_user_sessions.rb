class CreateUserSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_sessions do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
