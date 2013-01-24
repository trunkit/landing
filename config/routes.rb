SwaylyLanding::Application.routes.draw do
  # Promo Landing
  root :to         => "promo#landing", as: :landing

  # Promo Steps
  post "/share"    => "promo#share", as: :share
  post "/signup"   => "promo#signup", as: :signup
  post "/complete" => "promo#complete", as: :complete

  # Content
  match "/login"   => "content#login"
  match "/about"   => "content#about"
end
