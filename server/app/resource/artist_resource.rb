class ArtistResource < JSONAPI::Resource
  attributes :first, :last, :email, :password, :username, :phone, :website_url, :portrait_url, :bio, :quick_intro
  has_many :follow
  has_many :work
end
