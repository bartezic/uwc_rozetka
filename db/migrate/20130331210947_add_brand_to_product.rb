class AddBrandToProduct < ActiveRecord::Migration
  def change
    add_column :products, :brand_id, :integer
    add_index :products, :brand_id
  end
end
