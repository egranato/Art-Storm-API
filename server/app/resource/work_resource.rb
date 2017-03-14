class WorkResource < JSONAPI::Resource
  attributes :name, :work_type, :description, :visual_url, :artists_id
  belongs_to :artists
end
