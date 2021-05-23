Rails.application.routes.draw do
  devise_for :users , :controllers => { registrations: 'registrations'}
  resources :covid_centers
  root'covid_centers#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
