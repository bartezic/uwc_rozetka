class AddProductIdToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :product_id, :integer
    add_index :photos, :product_id
  end
end
