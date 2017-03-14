class UserResource < JSONAPI::Resource
  attributes :username, :email, :first, :last, :password
  has_many :follows
end
