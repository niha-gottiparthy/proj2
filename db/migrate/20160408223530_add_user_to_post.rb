class AddUserToPost < ActiveRecord::Migration
  def change
    add_column :posts, :user, :user
  end
end
