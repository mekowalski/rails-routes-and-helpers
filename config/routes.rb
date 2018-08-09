Rails.application.routes.draw do
  # resources :students
  # namespace :admin do
  #   resources :articles, :comments
  # end

  # scope module: 'admin' do
  #   resources :articles
  # end

  #same
  #resources :articles, module 'admin'


  #NESTED RESOURCES
  #School has_many Teachers, Teachers has_many Students etc
  #/school/1/teachers/
  # resources :schools do
  #   resources :teachers, only: %w[index new create]
  # end
  # resources :teachers, only: %w[show edit update destroy]

  # concern :commentable do
  #   resources :comments
  # end
  #
  # resources :messages, concerns: :commentable


  #RESTFUL ACTIONS
  resources :schools do
    member do
      get 'preview'
    end
  end

  #same but different format
  # resources :schools do
  #   get 'preview', on: :member
  # end

end
