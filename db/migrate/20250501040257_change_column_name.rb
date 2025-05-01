class ChangeColumnName < ActiveRecord::Migration[8.0]
  def change
    rename_column :users, :password_digest, :password
    change_column :users, :password, :string, null: false
    add_index :users, :password, unique: true
  end
end
