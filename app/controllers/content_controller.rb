class ContentController < ApplicationController
  def index
    respond_to do |format|
      format.html { redirect_to(brands_path) if current_user }
      format.js   { render(js: "window.location = '/brands';") if current_user }
    end
  end
end
