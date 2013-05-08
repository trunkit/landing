Landing::Application.routes.draw do
  # Home
  root to: "content#index"

  # User
  resources :users,    only: [:new, :create]
  resource  :sessions, only: [:new, :create, :destroy]

  # Brands leaderboard
    patch "vote" => "brands#upvote"
  resources :brands, only: [:index, :new, :create] do
  end
end
