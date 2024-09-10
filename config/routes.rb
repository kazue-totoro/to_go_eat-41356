Rails.application.routes.draw do
  devise_for :users
  resources :shops, only: [:index, :create, :show] do
    collection do
      get 'list'
    end
  end
  
  root to: 'shops#index'
end
