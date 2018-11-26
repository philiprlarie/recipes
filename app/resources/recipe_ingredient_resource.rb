class RecipeIngredientResource < JSONAPI::Resource
  attributes :created_at, :mass, :notes, :units, :updated_at, :volume

  belongs_to :recipe
  belongs_to :ingredient
end
