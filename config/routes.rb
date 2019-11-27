Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dogs#index'
  resources :dogs, only: [:new, :create, :show]
end
