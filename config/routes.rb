Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  post '/signup', to: 'users#create'
  resources :answers
  post :student_answers, to: 'answers#student_answers'
  resources :student_quizzes
  resources :users, except: :create
  get 'users/:id(.:format)', to: 'users#show', id: /.*?/, format: /[^.]+/
  resources :quizzes
  resources :cohorts
end
