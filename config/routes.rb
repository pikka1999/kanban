Rails.application.routes.draw do
  devise_for :users
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'
  resources :list, only: %i(new create edit update destroy)
  
  resources :list, only: %i(new create edit update destroy) do
    resources :card, only: %i(new create show edit update destroy)
    # resources :card, except: %i(index)ともかける
  end
end
