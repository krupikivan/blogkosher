Rails.application.routes.draw do
  # resources :users
  # resources :posts
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles#, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  get 'signup', to: 'auth#signup'
  resources :users, except: [:new]
  get 'api/get_articles' => "api#get_articles"
  
end
