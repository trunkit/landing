class PromoController < ApplicationController
  def landing
  end

  def invite
  end

  def complete
    PromoSignup.create(email: params[:email])
  end
end
