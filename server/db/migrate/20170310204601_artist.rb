class Artist < ActiveRecord::Migration[5.0]
  def change
     create_table :artist do |t|
       t.column :username, :string
       t.column :email, :string
       t.column :password, :string
       t.column :first, :string
       t.column :last, :string
       t.column :portrait_url, :string
       t.column :phone_number
       t.timestamps
       has_many :art_works
       has_many :follows
  end
end
