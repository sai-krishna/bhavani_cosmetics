Rails.application.routes.draw do
  root 'retailers#index'
  resources :retailers do
    collection do
      get :search
    end
  end
  resources :invoices do
    resources :payments
  end
  namespace :reports do
    resources :outstanding_invoices, only: :index
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
