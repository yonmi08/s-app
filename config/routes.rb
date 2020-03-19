Rails.application.routes.draw do
  devise_for :users

  root "graphs#index"
  resources :users,       only: [:edit, :update]
  resources :graphs,      only: [:index, :new, :create, :edit, :update, :destroy]
  resources :managements, only: [:new, :create, :edit, :destory]
  resources :foods,       only: [:new, :create, :edit, :destory]
end
