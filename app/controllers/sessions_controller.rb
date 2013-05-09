class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(email: params[:email]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      respond_to {|f| f.js { render(js: "window.location = '/';") }}
    else
      render(template: "sessions/errors", layout: false)
    end
  end
end
