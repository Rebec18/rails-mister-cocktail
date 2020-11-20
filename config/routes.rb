Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, except: %i[destroy update edit] do
    resources :doses, only: %i[create new]
  end
  resources :doses, only: [:destroy]
end
