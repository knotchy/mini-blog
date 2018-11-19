class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string     :title,null: false
      t.text       :text,null: false
      t.text       :image
      t.references :users,index: true,foreign_key: true
      t.timestamps
    end
  end
end
