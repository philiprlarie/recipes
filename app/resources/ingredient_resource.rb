class IngredientResource < JSONAPI::Resource
  attributes :name, :created_at, :updated_at

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
end
