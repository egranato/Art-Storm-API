class CreateArtWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :art_works do |t|
      t.references :artist, foreign_key: true
      t.column :artwork_url, :string
      t.timestamps
    end
  end
end
