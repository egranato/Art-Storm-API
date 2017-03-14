class ArtworkResource < JSONAPI::Resource
  attributes :genre, :name, :description, :work_url, :artist_id
  belongs_to :artist

end
