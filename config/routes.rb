Rails.application.routes.draw do
  resources :events
  resources :events do
    member do
      get 'register'
      post 'register'
      delete 'unregister'
    end
  end
  root 'events#index'
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout' }
end
