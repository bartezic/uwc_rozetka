class CreateReviewUsefullnesses < ActiveRecord::Migration
  def change
    create_table :review_usefullnesses do |t|
      t.boolean :usefull
      t.references :review

      t.timestamps
    end
    add_index :review_usefullnesses, :review_id
  end
end
