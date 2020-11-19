Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, except: %i[destroy update edit] do
    resources :doses, only: %i[create new]
  end
  resources :doses, only: [:destroy]
end
