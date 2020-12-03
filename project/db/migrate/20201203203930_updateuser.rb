class Updateuser < ActiveRecord::Migration[5.2]
  rename_column :users, :name, :username
  remove_column :users, :email
  
end
