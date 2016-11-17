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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
