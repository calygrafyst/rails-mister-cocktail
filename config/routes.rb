Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:index, :create, :new, :show]
  end
  resources :doses, only: [:destroy]
end
