Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # https://guides.rubyonrails.org/routing.html#controller-namespaces-and-routing
  namespace :api, module: nil do
    jsonapi_resources :recipes
  end
end
