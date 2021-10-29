Rails.application.routes.draw do

  get 'message/create'
   root 'pages#home'

  get '/dashboard', to: 'users#dashboard' #esto genera el dashboard_path
  get '/users/:id', to: 'users#show', as: 'users'
  get '/selling_orders', to: 'orders#selling_orders'
  get '/buying_orders', to: 'orders#buying_orders'
  get '/orders/:id', to: 'orders#show', as: "order_detail"
  get '/all-requests', to: 'requests#list'
  get '/request_offers/:id', to: 'requests#offers', as: 'request_offers'
  get '/my_offers', to: 'requests#my_offers'
  get '/search', to: 'pages#search'
  get '/calendar', to: 'pages#calendar'
  get '/admin/dashboard', to: 'dashboard#index', as: 'admin'
  get '/conversations', to: 'conversations#list', as: 'conversations'
  get '/conversations/:id', to: 'conversations#show', as: 'conversations_detail'
  

  post '/users/edit', to: 'users#update'  #users_edit_path
  post '/offers', to: 'offers#create'
  post '/reviews', to: 'reviews#create'
  post 'messages', to: 'messages#create'
  post '/comments', to: 'comments#create'


  put '/orders/:id/complete', to: 'orders#complete', as: 'complete_order' #complete_order_path
  put '/offers/:id/accept', to: 'offers#accept', as: 'accept_offer'
  put '/offers/:id/reject', to: 'offers#reject', as: 'reject_offer'

  mount ActionCable.server => '/cable'


  resources :gigs do
    member do
      delete :delete_photo
      post :upload_photo
    end

    resources :orders, only: [:create] #/gigs/15/orders esto es lo producira
  end

  resources :requests
  
  devise_for :users,  controllers: {omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' },
              path:'', 
              path_names: {sign_up: 'register', sign_in: 'login', edit: 'edit_profile', sign_out:'logout'}
              


 devise_scope :user do
                get '/logout' => 'devise/sessions#destroy'
                get '/users/sign_out' => 'devise/sessions#destroy'
                end

 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
