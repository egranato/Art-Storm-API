class FollowResource < JSONAPI::Resource
  attributes :artist_id, :user_id
  belongs_to :artist
  belongs_to :user

end
