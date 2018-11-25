class AddMeasureColumnsToRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_ingredients, :volume, :float, null: true
    add_column :recipe_ingredients, :mass, :float, null: true
    change_column :recipe_ingredients, :units, :float, null: true

    add_column :recipe_ingredients, :notes, :text, null: true
  end
end
