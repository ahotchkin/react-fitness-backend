Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"


  namespace :api do
    namespace :v1 do
      resources :users
      resources :exercises
      resources :diaries
      resources :meals
      resources :foods
      resources :meal_foods
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
