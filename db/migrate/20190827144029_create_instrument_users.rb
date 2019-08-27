class CreateInstrumentUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :instrument_users do |t|
      t.string :experience
      t.boolean :is_available
      t.references :user, foreign_key: true
      t.references :instrument, foreign_key: true

      t.timestamps
    end
  end
end
