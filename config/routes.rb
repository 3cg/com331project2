Rails.application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :complaints, only: [:index, :new, :create, :show]

  root 'complaints#index'
end
