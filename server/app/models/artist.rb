class Artist < ApplicationRecord
  has_many :follows
  has_many :works
  validates :username,  presence: true, length: { maximum: 15 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #                 format: { with: VALID_EMAIL_REGEX },
  #                 uniqueness: { case_sensitive: false }
  has_secure_password
  # validates :password, presence: true
  # , length: { minimum: 6 }
end
