class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :first
      t.string :last
      t.text :password
      t.boolean :is_artist
      t.string :phone
      t.text :website_url
      t.text :portrait_url
      t.text :bio
      t.text :quick_intro
      t.boolean :is_admin

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
  end
end
