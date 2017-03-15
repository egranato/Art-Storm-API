class WorkResource < JSONAPI::Resource
  attributes :name, :genre, :description, :work_url, :artists_id
  belongs_to :artist
end
