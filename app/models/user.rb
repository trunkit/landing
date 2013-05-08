class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :contact_name
  field :boutique_name
  field :website
  field :email
  field :password_digest
  field :city
  field :state

  has_secure_password

  validates_presence_of   :contact_name, :boutique_name, :email
  validates_uniqueness_of :email
end
