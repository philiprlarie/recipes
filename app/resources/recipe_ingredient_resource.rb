class RecipeIngredientResource < JSONAPI::Resource
  attributes :units

  belongs_to :recipe
  belongs_to :ingredient
end
