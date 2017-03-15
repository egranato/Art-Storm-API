class UserResource < JSONAPI::Resource
  attributes :username, :email, :first, :last, :password, :is_artist, :phone, :website_url, :portrait_url, :bio, :quick_intro, :is_admin
  has_many :active_follows, class_name: "Follow",
                            foreign_key: "follower_id",
                            dependent: :destroy
end
