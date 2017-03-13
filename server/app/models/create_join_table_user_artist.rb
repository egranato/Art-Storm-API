class CreateJoinTableUserArtist < ApplicationRecord
  belongs_to :artists
  belongs_to :users
end
