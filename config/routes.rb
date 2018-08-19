Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :courses, only: [:index, :show]
      resources :campuses, only: [:index, :show]

    end
  end
end
