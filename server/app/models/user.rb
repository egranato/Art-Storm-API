class User < ApplicationRecord::Base
  has_many :active_follows, class_name: "Follow",
                                foreign_key: "follower_id",
                                dependent: :destroy
end
