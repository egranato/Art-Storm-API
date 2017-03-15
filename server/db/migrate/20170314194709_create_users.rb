class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :first
      t.string :last
      t.text :password
      t.boolean :is_artist
      
      t.timestamps
    end
  end
end
