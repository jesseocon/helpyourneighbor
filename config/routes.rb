Rails.application.routes.draw do
  root to: 'visitors#index'
  get '/pre-enroll', to: 'visitors#pre_enroll'
  get '/early_access', to: 'visitors#early_access'

  resources :webhooks
  resources :courses do
    resources :boards
  end
end
