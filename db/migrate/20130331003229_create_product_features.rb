class CreateProductFeatures < ActiveRecord::Migration
  def change
    create_table :product_features do |t|
      t.references :product
      t.references :feature
      t.string :value

      t.timestamps
    end
    add_index :product_features, :product_id
    add_index :product_features, :feature_id
  end
end
