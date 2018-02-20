Rails.application.routes.draw do


  resources :recipes
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
    get 'signin', to: 'devise/sessions#new'
    delete 'signout', to: 'devise/sessions#destroy'
    get 'signup', to: 'devise/registrations#new'
  end

  get 'feed', to: 'feed#show'

  resources :users, only: :show, param: :username do
    member do
      post 'follow', to: 'follows#create'
      delete 'unfollow', to: 'follows#destroy'
    end
  end


  resources :beers do
    member do
      post 'vote', to: 'votes#create'
      delete 'unvote', to: 'votes#destroy'
    end
  end
  resources :tweets

  resources :movies do
    member do
      post 'watched', to: 'watches#create'
      delete 'unwatched', to: 'watches#destroy'
    end
  end

  resources :comments do
    member do
      post 'comments', to: 'comments#create', as: "create"
      delete 'uncomment', to: 'comments#destroy', as: "delete"
    end
  end



  resources :nominations


  get 'pages/home'

  root "pages#home"

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
