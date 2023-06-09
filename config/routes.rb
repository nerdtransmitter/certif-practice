Rails.application.routes.draw do
  root to: "lists#index"
  resources :books, only: [:index]
  resources :lists, except: :index do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end
