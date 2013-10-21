class CreateCategoryAttributes < ActiveRecord::Migration
  def change
    create_table :category_attributes do |t|
      t.references :category
      t.references :part_attribute
      t.timestamps
    end
  end
end
