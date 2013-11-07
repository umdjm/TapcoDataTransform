class AddOrderingcolumnToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :orderingcolumn, :integer
  end
end
