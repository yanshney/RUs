Rails.application.routes.draw do
  resources :pages
  resources :tests
  resources :question_longs
  resources :users
  root 'question_longs#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
