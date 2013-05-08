module BrandsHelper
  def vote_button(brand)
    id = "brand-vote-#{brand.id}"

    if brand.votes.include?(current_user.id)
      link_to("Voted", brand_vote_path(brand), remote: true, method: :patch, class: "voted", id: id)
    else
      link_to("Vote", brand_vote_path(brand), remote: true, method: :patch, class: "vote", id: id)
    end
  end
end
