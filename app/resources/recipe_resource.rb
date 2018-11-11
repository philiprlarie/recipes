class RecipeResource < JSONAPI::Resource
  attributes :name, :source, :steps

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
end
