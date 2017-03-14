Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  jsonapi_resources :user
  jsonapi_resources :artist
  jsonapi_resources :work
  jsonapi_resources :follow
end
