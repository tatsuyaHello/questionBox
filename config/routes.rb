Rails.application.routes.draw do
  resources :questions, only: [:new, :create]
  root 'questions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
