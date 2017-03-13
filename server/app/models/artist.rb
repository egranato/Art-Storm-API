class Artist < ApplicationRecord
  has_many :art_works
  has_many :create_join_table_user_artists
end
