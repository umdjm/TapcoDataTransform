class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :ExampleURL
      t.string :DisplayText
      t.references :brand

      t.timestamps
    end
    add_index :images, :brand_id
  end
end
