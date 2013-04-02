class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.references :product
      t.references :accessory_product
      t.references :discount

      t.timestamps
    end
    add_index :accessories, :product_id
    add_index :accessories, :accessory_product_id
    add_index :accessories, :discount_id
  end
end
