Rails.application.routes.draw do
  devise_for :users
  root 'main#index'
  get '/', to: 'main#index' # root sciezki do main index
  # get '/main', to: 'main#index' # root sciezki do /main
  resources :movies
  resources :users, only: [:destroy]
  resources :ratings, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


