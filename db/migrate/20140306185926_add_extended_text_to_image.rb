class AddExtendedTextToImage < ActiveRecord::Migration
  def change
    add_column :images, :extended_text, :string
  end
end
