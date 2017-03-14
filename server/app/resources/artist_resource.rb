class ArtistResource < JSONAPI::Resource
  attributes :first, :last, :email, :password, :username, :phone, :website_url, :portait, :bio, :quick_intro
  has_many :follows
  has_many :works
end
