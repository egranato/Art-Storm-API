class Artist < ApplicationRecord
  has_many :follows
  has_many :works
end
