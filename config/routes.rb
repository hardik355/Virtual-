Rails.application.routes.draw do
  resources :products do
    collection { post :search, to: 'products#index' }
  end
  
  resources :products
  # root to: 'products#index'
end
