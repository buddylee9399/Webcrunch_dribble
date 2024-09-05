Rails.application.routes.draw do
  resources :shots do
    resources :comments
    member do 
      put 'like', to: "shots#like"
      put 'unlike', to: "shots#unlike"
    end    
  end
  root to: 'shots#index'
  
  get   'about', to: 'static_pages#about'
  get   'contact', to: 'static_pages#contact'
  get   'privacy', to: 'static_pages#privacy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
