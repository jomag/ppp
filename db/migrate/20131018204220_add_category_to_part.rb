class AddCategoryToPart < ActiveRecord::Migration
  def change
    add_column :parts, :category_id, :integer
    add_index :parts, :category_id
  end
end
