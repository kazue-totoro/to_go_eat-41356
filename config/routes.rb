Rails.application.routes.draw do
  devise_for :users
  resources :shops, only: [:index, :create] do
    collection do
      get 'list'
    end
  end
  
  root to: 'shops#index'
end
