Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  mount RailsAdmin::Engine => '/n', as: 'rails_admin'
  resources :region_tables
  resources :prod_instances
  resources :customer_contacts
  resources :customer_contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :homepage
 root 'homepage#index'
#GET '/showall' , to: 'homepage#show'

end
