Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :courses, only: :show do
        resources :curriculums, only: [:index, :show], shallow: true
      end

      resources :departments, only: [:index, :show] do
        resources :courses, only: :index
      end

      resources :offers, only: :show
      resources :semesters, only: [:index, :show] do
        resources :offers, only: :index
        resources :subjects, only: :index
      end

      resources :campuses, only: [:index, :show]
      resources :flow_subjects, only: [:index, :show]
      resources :subjects, only: [:index, :show]
      resources :slots, only: [:index, :show]
      resources :professors, only: [:index, :show]

    end
  end
end
