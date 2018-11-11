class CreateRecipiesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :recipies_tables do |t|
      t.string :name, null: false
      t.text :steps, null: false
      t.string :source, null: false
    end
  end
end
