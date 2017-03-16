class ArtistResource < JSONAPI::Resource
  attributes :first, :last, :email, :password_digest, :username, :phone, :website_url, :portrait_url, :bio, :quick_intro
  has_many :follow
  has_many :works
end
