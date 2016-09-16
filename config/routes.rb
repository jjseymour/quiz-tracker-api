Rails.application.routes.draw do
  get 'quizzes/index'

  get 'quizzes/show'

  resources :quizzes
end
