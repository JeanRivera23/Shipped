Rails.application.routes.draw do

  get 'home/index'

  devise_for :employees, :controllers => { registrations: 'registrations' }

  root to: "home#index"

  get '/' => "home#index"

  resources :boats, :jobs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
