class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :contact_name
  field :boutique_name
  field :website
  field :email
  field :password_digest
  field :state

  has_secure_password
end
