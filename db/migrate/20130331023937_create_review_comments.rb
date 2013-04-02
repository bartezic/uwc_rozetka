class CreateReviewComments < ActiveRecord::Migration
  def change
    create_table :review_comments do |t|
      t.string :username
      t.text :comment
      t.references :review

      t.timestamps
    end
    add_index :review_comments, :review_id
  end
end
