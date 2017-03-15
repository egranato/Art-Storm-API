require 'bcrypt'

class User < ApplicationRecord::Base
  include BCrypt

  def password
   @password ||= Password.new(password_hash)
  end

  def password=(new_password)
   @password = Password.create(new_password)
   self.password_hash = @password
  end
 
  has_many :follows
  has_many :artists, through: :follows
end
