class CreateWizardOptions < ActiveRecord::Migration
  def change
    create_table :wizard_options do |t|
      t.integer :wizard_id
      t.string :title
      t.string :image_path
      t.integer :next_wizard_id
      t.integer :questionSet_id

      t.timestamps
    end
  end
end
