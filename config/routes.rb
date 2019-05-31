Rails.application.routes.draw do
  resources :joke_lists
  resources :lists
  resources :jokes
  resources :users

  post '/login', to: 'users#login'
  post '/joke_lists/delete', to: 'joke_lists#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
