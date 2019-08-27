class CreateNeededInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :needed_instruments do |t|
      t.references :band, foreign_key: true
      t.references :instrument, foreign_key: true

      t.timestamps
    end
  end
end
