class UpdateRecipeIngredientsMeasureColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipe_ingredients, :volume, :float
    remove_column :recipe_ingredients, :mass, :float
    remove_column :recipe_ingredients, :units, :float

    add_column :recipe_ingredients, :amount, :float
    add_reference :recipe_ingredients, :measure, foreign_key: true
  end
end
