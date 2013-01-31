SwaylyLanding::Application.routes.draw do
  # Promo Landing
  root :to         => "promo#landing", as: :landing

  # Promo Steps
  get  "/invite"   => "promo#invite",   as: :invite
  post "/complete" => "promo#complete", as: :complete
  get  "/complete" => redirect("/")

  # Content
  match "/login"   => "content#login"
  match "/about"   => "content#about"
end
