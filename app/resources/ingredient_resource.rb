class IngredientResource < JSONAPI::Resource
  attributes :name, :created_at, :updated_at

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  # http://jsonapi-resources.com/v0.9/guide/resources.html#Filters
  filter :name_like, apply: ->(records, value, _options) {
    records.where('name LIKE ?', '%' + value[0] + '%')
  }
end
