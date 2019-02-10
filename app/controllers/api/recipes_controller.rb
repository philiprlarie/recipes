class Api::RecipesController < ApplicationController
  def update_photo
    id = params[:id]
    photo = params[:photo]

    recipe = Recipe.find(id)
    recipe.photo.attach(photo)
  end
end
