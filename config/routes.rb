MyPortfolioSite::Application.routes.draw do
  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "about", to: "pages#about", as: "about"
  get "portfolio", to: "pages#portfolio", as: "portfolio"    
  get "apps", to: "pages#apps", as: "apps"
  get "blog", to: "pages#blog", as: "blog"  
  get "inside", to: "pages#inside", as: "inside"
  
    
  devise_for :users
  
  namespace :admin do
    root "base#index"
    resources :users
  end
  
end
