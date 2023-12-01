class RenamePasswordToEncryptedPassword < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :password, :encrypted_password
  end
end
