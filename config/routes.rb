Rails.application.routes.draw do
  root 'retailers#index'
  resources :retailers
  resources :invoices
  resources :payments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
