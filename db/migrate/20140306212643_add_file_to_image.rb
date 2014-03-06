class AddFileToImage < ActiveRecord::Migration
  def change
    add_column :images, :FileToUpload, :string
  end
end
