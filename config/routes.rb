Rails.application.routes.draw do
  resources :orders
  resources :reviews
  resources :profiles
  resources :products
  resources :charges
  root 'home#index'
  devise_for :users
  get 'contact', to: 'static_pages#contact'
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
