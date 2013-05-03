class User
  include Mongoid::Document

  field :contact_name
  field :boutique_name
  field :website
  field :email
  field :password_digest
  field :state

  has_secure_password
end
