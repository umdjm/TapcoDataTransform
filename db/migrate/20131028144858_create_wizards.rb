class CreateWizards < ActiveRecord::Migration
  def change
    create_table :wizards do |t|
      t.string :title
      t.integer :level

      t.timestamps
    end
  end
end
