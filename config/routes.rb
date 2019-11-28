Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post '/login', to: 'users#login'
      resources :services, only: [:index, :show, :create, :destroy] do
        resources :bookings, only: [:create]
      end
      resources :users, only: [:show, :update]
    end
  end
end
