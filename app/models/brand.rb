class Brand
  include Mongoid::Document

  field :name,         type: String
  field :email,        type: String
  field :website,      type: String
  field :phone,        type: String
  field :contact_name, type: String
  field :votes,        type: Array, default: []

  validates_presence_of :name, :email, :phone, :contact_name

  def toggle_vote(user)
    if votes.include?(user.id)
      votes.delete(user.id)
    else
      votes << user.id
    end

    save
  end
end
