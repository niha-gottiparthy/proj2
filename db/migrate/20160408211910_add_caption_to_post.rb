class AddCaptionToPost < ActiveRecord::Migration
  def change
    add_column :posts, :caption, :string
  end
end
