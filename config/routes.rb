Rails.application.routes.draw do
  root 'welcome#home'

  resources :board_games, only: [:show, :index] do
    collection do
      post 'import'
    end
  end
  resources :categories, only: [:index]
end
