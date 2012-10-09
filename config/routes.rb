Store::Application.routes.draw do
  resources :brands, except: :create do
    get 'facebook_callback', on: :collection
  end

  root to: 'brands#index'

  # match "facebook/callback" => "brands#facebook"
end
