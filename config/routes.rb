Rails.application.routes.draw do
  get 'sessions/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/show'

  get 'sessions/edit'

  get 'sessions/update'

  get 'sessions/destroy'

  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'games/index'

  get 'games/new'

  get 'games/create'

  get 'games/show'

  get 'games/edit'

  get 'games/update'

  get 'games/destroy'

  get 'votes/index'

  get 'votes/new'

  get 'votes/create'

  get 'votes/show'

  get 'votes/edit'

  get 'votes/update'

  get 'votes/destroy'

  get 'categories/index'

  get 'categories/new'

  get 'categories/create'

  get 'categories/show'

  get 'categories/edit'

  get 'categories/update'

  get 'categories/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
