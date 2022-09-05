Rails.application.routes.draw do
  
  resources :portfolios, except: [:show] 
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  # We can add any type of name to the route ex get 'salgj', to: "pages#home"
  get 'about' , to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs do
   member do 
    get :toggle_status
   end
  end
  
  #  User main home page
  root "pages#home"
end
