Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]

  resources :categories, only: [:index, :show] do
    resources :games, only: [:index, :show]
  end

  # games/results

  resources :games, only: [:index, :show] do
    resources :comments
    resources :votes, except: [:index, :destroy]
    # need to update votes
    resources :users
  end

  resources :users, except: [:index] do
    resources :comments
    resources :votes, except: [:index, :destroy]
    resources :games, except: [:edit, :update]
    resources :friends, except: [:edit, :update]
  end

  root 'games#index'
  post "/games" =>'games#search'

  root to: 'gif#cool'

  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
