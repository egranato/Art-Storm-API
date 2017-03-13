class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :username
      t.string :email
      t.text :password
      t.string :first
      t.string :last
      t.text :portrait_url
      t.string :phone_number
      t.text :website_url
      t.text :bio
      t.string :quick_intro

      t.timestamps
    end
  end
end
