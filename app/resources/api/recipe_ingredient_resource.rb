class Api::RecipeIngredientResource < JSONAPI::Resource
  attributes :amount, :created_at, :notes, :updated_at

  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :measure
end
