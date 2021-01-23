Rails.application.routes.draw do

  get 'pages/home'
  root to: 'pages#home'

  resources :cocktails, only: %i[index show new create destroy] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: [:destroy]
end
