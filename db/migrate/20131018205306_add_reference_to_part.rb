class AddReferenceToPart < ActiveRecord::Migration
  def change
    add_column :parts, :reference, :string
  end
end
