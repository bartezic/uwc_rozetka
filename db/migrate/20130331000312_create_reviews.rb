class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :email
      t.references :product
      t.integer :marg
      t.string :pros
      t.string :cons

      t.timestamps
    end
    add_index :reviews, :product_id
  end
end
