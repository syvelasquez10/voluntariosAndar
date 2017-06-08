Rails.application.routes.draw do
  resources :jobs
  resources :roles
  resources :volunteers
  root :to => "volunteers#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
