class Brand < ActiveRecord::Base
  attr_accessible :name, :wizard_id
  belongs_to :wizard
  has_many :images, :order => :id

  def self.write_json_to_file
     File.open('WarrantyItemConfig2.json', 'w') do |f|
         f.puts self.output_all
     end
  end

  def self.output_all
    '{ "Brands" : ' + Brand.output_json + ', "Wizards" : ' + Wizard.output_json + ', "QuestionSets" : ' + QuestionSet.output_json + '}'
  end
  def self.output_json
    Brand.order(:id).to_json(
        :except => [:updated_at, :created_at], 
        :include => {
            :images => {
                    :except => [:updated_at, :created_at, :brand_id]
                }
           }
    )
  end

end
