class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :genre
      t.string :name
      t.text :description
      t.text :work_url
      t.references :aritist, foreign_key: true

      t.timestamps
    end
  end
end
