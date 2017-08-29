Rails.application.routes.draw do
  get 'athletes/edit'

  root 'athletes#index'

  resources :athletes
end
