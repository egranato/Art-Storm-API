class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.references :artist, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
