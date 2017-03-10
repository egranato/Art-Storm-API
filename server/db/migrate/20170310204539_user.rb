class User < ActiveRecord::Migration[5.0]
  def change
     create_table :user do |t|
       t.column :username, :string, :limit => 12
       # make sure that bz and tara use form validation to limit usernames to 12
       t.column :email, :string
       t.column :password, :string
       t.column :first, :string
       t.column :last, :string
       t.timestamps
       has_many :follows
  end
end
