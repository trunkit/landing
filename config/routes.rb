SwaylyLanding::Application.routes.draw do
  # Promo Landing
  root :to         => "promo#landing"

  # Promo Steps
  post "/share"    => "promo#share"
  post "/signup"   => "promo#signup"
  post "/complete" => "promo#complete"
end
