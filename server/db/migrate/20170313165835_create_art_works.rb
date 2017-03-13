class CreateArtWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :art_works do |t|
      t.string :type
      t.string :name
      t.text :description
      t.text :visual_url
      t.references :artists, foreign_key: true

      t.timestamps
    end
  end
end
