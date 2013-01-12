class PromoController < ApplicationController
  def landing
  end

  def share
  end

  def signup
  end

  def complete
    PromoSignup.create(email: params[:email], gift: params[:answer], friends: params[:friends])
  end
end
