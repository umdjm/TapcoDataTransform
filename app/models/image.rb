class Image < ActiveRecord::Base
  belongs_to :brand
  attr_accessible :DisplayText, :ExampleURL, :brand_id
end
