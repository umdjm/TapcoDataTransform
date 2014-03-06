class Image < ActiveRecord::Base
  belongs_to :brand
  attr_accessible :DisplayText, :ExampleURL, :FileToUpload, :brand_id, :orderingcolumn, :extended_text
end
