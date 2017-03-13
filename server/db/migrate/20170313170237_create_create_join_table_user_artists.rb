class CreateCreateJoinTableUserArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :create_join_table_user_artists do |t|
      t.references :users, foreign_key: true
      t.references :artists, foreign_key: true

      t.timestamps
    end
  end
end
