Osc::Application.routes.draw do

  resources :clubsessions
  resources :news
  resources :racingteams
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy]
  
  match '/welcome', :controller  => 'welcome', :action  =>  'index'
  match 'register' => 'authors#new'
  match 'login' => 'author_sessions#new'
  match 'logout' => 'author_sessions#destroy'
  match 'auth/facebook/callback' => 'author_sessions#create'
  match 'auth/failure' => redirect('/')

  root :to => 'welcome#index'
  get "welcome/index"
  get "welcome/learntoski"
  get "welcome/aboutus"
  get "welcome/contactus"
  get "welcome/faqs"
  get "welcome/gallery"
  post "welcome/photo_upload"
  get "tags/index"
  get "tags/show"
end
