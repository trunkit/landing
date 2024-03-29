class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.errors.blank?
      session[:user_id] = @user.id
      respond_to {|f| f.js { render(js: "window.location = '/';") }}
    else
      render(template: "users/errors", layout: false)
    end
  end

  private

  def user_params
    params.require(:user).permit([:contact_name, :boutique_name, :website, :email, :city, :state, :password, :password_confirmation])
  end
end
