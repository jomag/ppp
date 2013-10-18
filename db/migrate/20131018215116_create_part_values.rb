class CreatePartValues < ActiveRecord::Migration
  def change
    create_table :part_values do |t|
      t.references :part_attribute
      t.references :part
      t.string :value
      t.timestamps
    end
  end
end
