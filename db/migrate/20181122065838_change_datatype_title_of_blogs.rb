class ChangeDatatypeTitleOfBlogs < ActiveRecord::Migration[5.0]
  def change
    change_column :blogs, :title, :text
  end
end
