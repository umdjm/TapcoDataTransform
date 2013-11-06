class AddFieldNameToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :fieldname, :string
  end
end
