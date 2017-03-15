class User < ApplicationRecord
  attr_accessor :username, :email, :id
  before_save { self.email = email.downcase }
  before_save { self.username = username.downcase }
  validates :username,  presence: true, length: { maximum: 15 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_many :active_follows, class_name: "Follow",
                            foreign_key: "follower_id",
                            dependent: :destroy
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
