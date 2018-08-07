Rails.application.routes.draw do
  resources :students

  get '/teacher/:id', to: 'teachers#show', as: 'teacher'
end
