Osc::Application.routes.draw do
  
  get "tags/index"

  get "tags/show"

  match '/welcome', :controller  => 'welcome', :action  =>  'index'
  match '/users/login', :controller => 'users', :action => 'login'
  match '/users/register', :controller  => 'users', :action  =>  'new'
  resources :users
  resources :sessions
  resources :news
  resources :racingteams
  resources :tags

  root :to => 'welcome#index'
  get "welcome/index"
  get "welcome/learntoski"
  get "welcome/aboutus"
  get "welcome/contactus"
  get "welcome/faqs"
end
