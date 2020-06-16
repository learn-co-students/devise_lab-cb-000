class AddOmniauthToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :prodiver, :string
    add_index :users, :prodiver
    add_column :users, :uid, :string
    add_index :users, :uid
  end
end
