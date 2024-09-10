Rails.application.routes.draw do
  devise_for :users
  resources :shops, only: [:index, :create, :show, :edit, :update, :destroy] do
    collection do
      get 'list'
    end
  end
  
  root to: 'shops#index'
end
