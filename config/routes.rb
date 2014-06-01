Rails.application.routes.draw do
  resources :lists, only: [:new, :create, :show, :index]
  resources :todos, only: [:show, :new, :create]
end
