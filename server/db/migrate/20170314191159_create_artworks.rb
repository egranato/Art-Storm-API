class CreateArtworks < ActiveRecord::Migration[5.0]
  def change
    create_table :artworks do |t|
      t.string :genre
      t.string :name
      t.string :description
      t.text :work_url
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
