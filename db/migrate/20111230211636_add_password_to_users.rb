class AddPasswordToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :encrypted_password, :string
  end

  def self.down
    add_column :users, :encrypted_password, :string
  end
end
