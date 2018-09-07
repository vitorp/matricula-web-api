Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :courses, only: [:index, :show]
      resources :campuses, only: [:index, :show]
      resources :curriculums, only: [:index, :show]
      resources :flow_subjects, only: [:index, :show]
      resources :subjects, only: [:index, :show]
      resources :offers, only: [:index, :show]
      resources :slots, only: [:index, :show]
      resources :professors, only: [:index, :show]
      resources :semesters, only: [:index, :show]
      resources :departments, only: [:index, :show]

    end
  end
end
