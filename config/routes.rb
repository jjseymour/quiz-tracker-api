Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  post '/signup', to: 'users#create'
  resources :answers
  resources :student_quizzes
  resources :users, except: :create
  resources :quizzes
  resources :cohorts
end
