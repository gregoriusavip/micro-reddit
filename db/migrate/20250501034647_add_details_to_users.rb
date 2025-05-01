class AddDetailsToUsers < ActiveRecord::Migration[8.0]
  def change
    change_column :users, :username, :string, null: false
    change_column :users, :email, :string, null: false
  end
end
