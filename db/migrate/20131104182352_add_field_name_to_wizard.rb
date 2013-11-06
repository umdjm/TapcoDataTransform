class AddFieldNameToWizard < ActiveRecord::Migration
  def change
    add_column :wizards, :fieldname, :string
  end
end
