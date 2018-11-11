class CreateRecipesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :steps, null: false, default: ''
      t.string :source, null: false
    end
  end
end
