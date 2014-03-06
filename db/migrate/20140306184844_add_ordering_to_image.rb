class AddOrderingToImage < ActiveRecord::Migration
  def change
    add_column :images, :orderingcolumn, :integer
  end
end
