class Api::RecipeResource < JSONAPI::Resource
  attributes :cook_time, :created_at, :inactive_time, :name, :prep_time, :servings, :source, :steps, :updated_at, :photo_url

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def photo_url
    return unless @model.photo.attached?

    Rails.application.routes.url_helpers.rails_blob_path(@model.photo, only_path: true)
  end
end
