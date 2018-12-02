class AddMeasuresTable < ActiveRecord::Migration[5.2]
  def change
    create_table :measures do |t|
      t.integer :measure_type, null: false
      t.string :unit, null: false
      t.string :abbreviation, null: true

      t.timestamps
    end
  end
end
