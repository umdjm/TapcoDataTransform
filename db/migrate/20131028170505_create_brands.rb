class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :wizard_id

      t.timestamps
    end
  end
end
