Rails.application.routes.draw do
   
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create] do
       resources :goals, only: [:show, :create, :update] do 
        resources :records, only: [:show, :create, :update]
       end
      end
      resources :goals, only: [:index]
      resources :records, only: [:index]
    end
  end
end
