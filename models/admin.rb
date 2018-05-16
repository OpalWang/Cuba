class Admin < ActiveRecord::Base 
  include Shield::Model

  attribute :email
  attribute :crypted_password
  #unique :email

  def self.fetch(identifier)
   Admin.find_by(:email, identifier)
  end
end
