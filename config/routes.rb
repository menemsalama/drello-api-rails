Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post 'auth/login', to: 'authentication#authenticate'
  # post 'signup', to: 'users#create'

  resources :boards do
    resources :lists do
      resources :cards
    end
  end

  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'

  get '/api/health', to: 'application#health'
end
