class WorkResource < JSONAPI::Resource
  attributes :name, :work_type, :description, :visual_url, :artists
  belongs_to :artists
end
