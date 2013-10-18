class CreatePartAttributes < ActiveRecord::Migration
  def change
    create_table :part_attributes do |t|
      t.string :name
      t.timestamps
    end
  end
end
