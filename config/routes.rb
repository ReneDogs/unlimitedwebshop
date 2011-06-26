SampleApp::Application.routes.draw do
  resources :articles
  resources :users 
  resources :sessions, :only => [:new, :create, :destroy]
  resources :orders
  resources :items
  
  match '/signup2',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/cart',   :to => 'pages#cart'
  match '/help',    :to => 'pages#help'
  root :to => 'pages#home'
  
  
 
  
  
end
