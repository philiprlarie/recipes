class RecipeResource < JSONAPI::Resource
  attributes :cook_time, :created_at, :inactive_time, :name, :prep_time, :servings, :source, :steps, :updated_at

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
end
