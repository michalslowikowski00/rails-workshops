Rails.application.routes.draw do
  get '/', to: 'main#index' # root sciezki do main index
  # get '/main', to: 'main#index' # root sciezki do /main
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


