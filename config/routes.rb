DbcRspecRails::Application.routes.draw do
  namespace :admin do
    resources :posts
  end

  resources :posts

  root :to => "home#index"
end