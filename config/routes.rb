Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # https://guides.rubyonrails.org/routing.html#controller-namespaces-and-routing
  namespace :api do
    jsonapi_resources :recipes
    jsonapi_resources :ingredients
    jsonapi_resources :measures
    jsonapi_resources :recipe_ingredients
  end
end
