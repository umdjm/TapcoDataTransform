class AddWizardOptionToWizard < ActiveRecord::Migration
  def change
    add_column :wizards, :wizard_option_id, :integer
  end
end
