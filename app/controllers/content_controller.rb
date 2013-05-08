class ContentController < ApplicationController
  def index
    redirect_to(brands_path) if current_user
  end
end
