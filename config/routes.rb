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
  resources :schools do
    resources :teachers do
      resources :students
    end
  end
end
