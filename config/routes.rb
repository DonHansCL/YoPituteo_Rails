Rails.application.routes.draw do

  get '/dashboard', to: 'users#dashboard' #esto genera el dashboard_path
  get '/users/:id', to: 'users#show'

  post '/users/edit', to: 'users#update'  #users_edit_path

  root "home#index"

  devise_for :users,  controllers: {omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' },
              path:'', 
              path_names: {sign_up: 'register', sign_in: 'login', edit: 'edit_profile', sign_out:'logout'}
              


 devise_scope :user do
                get '/logout' => 'devise/sessions#destroy'
                get '/users/sign_out' => 'devise/sessions#destroy'
                end

 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
