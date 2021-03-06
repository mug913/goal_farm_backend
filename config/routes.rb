Rails.application.routes.draw do
   
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create] do
       resources :goals, only: [:index, :show, :create, :update]
      end
      resources :goals, only: [:index]
    end
  end
end
