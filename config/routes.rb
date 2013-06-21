RiakTest::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :crawls
  resources :seed_lists
  resources :eighty_apps
  resources :eighty_app_data
end