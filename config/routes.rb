Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :docs
  authenticated :user do
  	root "welcome#hello", as: "authenticated_root"
  end

  root 'welcome#index'

  resources :guests

  resources :bookings

end
