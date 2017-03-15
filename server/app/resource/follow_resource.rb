class FollowResource < JSONAPI::Resource
  attributes :artists_id, :user_id
  has_many :artist
  has_many :user

end
