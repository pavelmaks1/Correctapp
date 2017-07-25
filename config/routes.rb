Rails.application.routes.draw do

  devise_for :users, skip: :registrable do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'pages#home'
  resources :categories, only: [:index, :show]
  resources :items, only: [:show]

  namespace :admin do
    get '', to: 'pages#admin', as: '/'
    resources :categories
    resources :items
  end

end
