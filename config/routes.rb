Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :courses, only: [:index, :show]
      resources :campuses, only: [:index, :show]
      resources :curriculums, only: [:index, :show]
      resources :flow_periods, only: [:index, :show]
      resources :subjects, only: [:index, :show]
      resources :offers, only: [:index, :show]

    end
  end
end
