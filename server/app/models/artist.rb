class Artists < ApplicationRecord
  has_many :follows
  has_many :users, through: :follows
  has_many :artworks
end
