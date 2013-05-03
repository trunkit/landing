Landing::Application.routes.draw do
  # Promo Landing
  root :to         => "promo#landing", as: :landing

  # Promo Steps
  get  "/invite"   => "promo#invite",   as: :invite
  post "/complete" => "promo#complete", as: :complete
  get  "/complete" => redirect("/")

  # Content
  get "/login"   => "content#login"
  get "/about"   => "content#about"
end
