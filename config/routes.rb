Osc::Application.routes.draw do


  get "tags/index"

  get "tags/show"

  resources :sessions
  resources :news
  resources :racingteams
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy]
  
  match '/welcome', :controller  => 'welcome', :action  =>  'index'
  match 'login' => 'author_sessions#new'
  match 'logout' => 'author_sessions#destroy'

  root :to => 'welcome#index'
  get "welcome/index"
  get "welcome/learntoski"
  get "welcome/aboutus"
  get "welcome/contactus"
  get "welcome/faqs"
end
