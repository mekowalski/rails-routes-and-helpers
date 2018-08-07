Rails.application.routes.draw do
  resources :students

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

GET(request) /students/12
{ id: '12' }
# going to GET the student with an id of 12
# direct to students controller and the show action (students#show)
# which then will direct to the views/students/show html page and display info regarding student 12
# generate paths and URLs
