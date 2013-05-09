class BrandsController < ApplicationController
  before_filter do
    redirect_to(root_path) unless current_user.present?
  end

  def index
    @brands = Brand.all.sort_by{|b| b.votes.size }.reverse
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.create(brand_params)

    if @brand.errors.blank?
      @brand.toggle_vote(current_user)
      respond_to {|f| f.js { render(js: "window.location = '/';") }}
    else
      render(template: "brands/errors", layout: false)
    end
  end

  def vote
    @brand = Brand.find(params[:brand_id])
    @brand.toggle_vote(current_user)
  end

  private

  def brand_params
    params.require(:brand).permit([:name, :email, :website, :phone, :contact_name])
  end
end
