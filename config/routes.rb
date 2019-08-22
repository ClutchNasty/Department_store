Rails.application.routes.draw do
root "departments#index"


resources :departments do
  resources :items

get "/departments", to: "departments#index", as: 'all_the_departments'
get "/department/:id", to: "department#show", as: 'the_one_department'
delete "/department/:id", to: "department#destroy", as: 'destroy_the_department'


end
end
