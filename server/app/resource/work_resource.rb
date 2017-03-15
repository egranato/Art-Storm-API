class WorkResource < JSONAPI::Resource
  attributes :name, :genre, :description, :visual_url, :artists_id
  belongs_to :artist
end
