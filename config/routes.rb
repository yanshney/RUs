Rails.application.routes.draw do
  resources :question_plurals
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :question_choices
  resources :question_moves
  resources :pages
  resources :tests
  resources :question_longs
  resources :users
  root 'tests#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
