Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  post '/signup', to: 'users#create'
  resources :answers
  resources :student_quizzes, except: [:show, :index]
  get '/student_quizzes', to: 'student_quizzes#show'
  resources :users, except: :create
  get 'users/:id(.:format)', to: 'users#show', id: /.*?/, format: /[^.]+/
  resources :quizzes
  resources :cohorts
end
