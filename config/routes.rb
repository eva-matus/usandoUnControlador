Rails.application.routes.draw do

  resources :carts

  root 'carts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
