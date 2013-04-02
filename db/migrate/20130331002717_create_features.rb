class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.boolean :in_filter
      t.boolean :primary

      t.timestamps
    end
  end
end
