Landing::Application.routes.draw do
  # Home
  root to: "content#index"

  # User
  resources :users,    only: [:new, :create]
  resource  :sessions, only: [:new, :create, :destroy]

  # Brands leaderboard
  resources :brands, only: [:new, :create] do
    patch "vote" => "brands#upvote"
  end
end
