MyPortfolioSite::Application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "about", to: "pages#about", as: "about"
  get "portfolio", to: "pages#portfolio", as: "portfolio"    
  get "blog", to: "pages#blog", as: "blog"  
  get "inside", to: "pages#inside", as: "inside"
  
    
  devise_for :users
  
  namespace :admin do
    root "base#index"
    resources :users
  end
  
  
  resources :articles do
    resources :comments
  end  
  
  resources :tags  
end
