class RecipeResource < JSONAPI::Resource
  attributes :name, :source, :steps
end
