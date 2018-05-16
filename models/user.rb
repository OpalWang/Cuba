class User < ActiveRecord::Base 
  include Shield::Model

  attribute :email
  attribute :encrypted_password
  #unique :email

  def self.fetch(identifier)
    User.find_by(:email, identifier)
  end
end
