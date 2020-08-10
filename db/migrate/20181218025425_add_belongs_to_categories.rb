class AddBelongsToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :belongs, :string, null: false
    add_index :categories, [:ancestry,:belongs]
  end
end
