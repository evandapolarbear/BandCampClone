Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resource :session, only: [:create, :destroy, :show]
    resource :artist, only: [:create, :update]
    resources :songs, only: [:index, :create]
    resources :artist, only: [:show]
  end
  root "static_pages#root"
end
