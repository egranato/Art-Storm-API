class User < ApplicationRecord
  has_many :follows
  has_many :artists, through: :follows
end
