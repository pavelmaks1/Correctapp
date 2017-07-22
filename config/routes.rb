Rails.application.routes.draw do

  devise_for :admin_users, {class_name: 'User' }.merge(ActiveAdmin::Devise.config)
  devise_for :users
  ActiveAdmin.routes(self)
  root 'pages#home'
  resources :categories, only:[:show,:index]
  resources :items, only:[:show]

end
