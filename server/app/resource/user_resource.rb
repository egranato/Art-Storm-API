class UserResource < JSONAPI::Resource
  attributes :username, :email, :first, :last, :password_digest
  has_many :follow
end
