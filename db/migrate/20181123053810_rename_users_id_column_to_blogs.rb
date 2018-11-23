class RenameUsersIdColumnToBlogs < ActiveRecord::Migration[5.0]
  def change
    rename_column :blogs, :users_id, :user_id
  end
end
