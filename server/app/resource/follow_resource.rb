class FollowResource < JSONAPI::Resource
  attributes :artists_id, :user_id
  belongs_to :artist
  belongs_to :user

end
