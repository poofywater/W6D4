class Updateusers < ActiveRecord::Migration[5.2]
    add_index :users, :username, unique: true
end
