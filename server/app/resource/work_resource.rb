class WorkResource < JSONAPI::Resource
  attributes :name, :work_type, :description, :visual_url, :artist_id
  belongs_to :artists
end
