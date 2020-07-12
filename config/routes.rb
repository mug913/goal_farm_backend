Rails.application.routes.draw do
   
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create] do
       resources :goals, only: [:index, :show, :create]
      end
    end
  end
end
