Rails.application.routes.draw do
  resources :books
  resources :base_people
  resources :news
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
