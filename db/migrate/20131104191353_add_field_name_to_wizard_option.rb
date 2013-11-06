class AddFieldNameToWizardOption < ActiveRecord::Migration
  def change
    add_column :wizard_options, :fieldname, :string
  end
end
