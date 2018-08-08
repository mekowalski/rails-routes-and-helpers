Rails.application.routes.draw do
  # resources :students
  namespace :admin do
    resources :articles, :comments
  end
end
