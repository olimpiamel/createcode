Rails.application.routes.draw do


  resources :profiles
  resources :croations
  resources :createdtranslations
  devise_for :creators


  get 'landing_page/index'

  root 'landing_page#index'

  get "/views/landing_page/contingencypage", to: "landing_page#contingencypage", as: "contingencypage"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
