Rails.application.routes.draw do

  get 'landing_page/index'

  root 'landing_page#index'


  resources :creations
  devise_for :creators
  get 'landing_page/index'

  root 'landing_page#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
