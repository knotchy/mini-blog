class AddNullToBlogsUsersId < ActiveRecord::Migration[5.0]
  def change
    change_column_null :blogs, :users_id, false
  end
end
