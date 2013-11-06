class AddImagePathToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :image_path, :string
  end
end
