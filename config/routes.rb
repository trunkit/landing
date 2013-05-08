Landing::Application.routes.draw do
  # Home
  root to: "content#index"

  # User
  resources :users,   only: [:new, :create]
  resource  :session, only: [:new, :create]

  # Brands leaderboard
  resources :brands, only: [:index, :new, :create] do
    patch "vote" => "brands#vote"
  end
end
