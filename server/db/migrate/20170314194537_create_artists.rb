class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :username
      t.string :phone
      t.text :website_url
      t.text :portrait_url
      t.text :bio
      t.text :quick_intro
      t.text :password

      t.timestamps
    end
  end
end
