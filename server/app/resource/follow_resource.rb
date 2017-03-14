class FollowResource < JSONAPI::Resource
  attributes :artist, :user
  belongs_to :artist
  belongs_to :user

end
