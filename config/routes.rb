Store::Application.routes.draw do
  resources :brands

  root to: 'brands#index'
end
