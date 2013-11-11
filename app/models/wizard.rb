class Wizard < ActiveRecord::Base
  attr_accessible :level, :title, :fieldname, :wizard_option_id
  has_many :wizardOptions, :order => :id

  amoeba do
    enable
  end
 
  def self.output_json
    Wizard.order(:id).to_json(
        :except => [:updated_at, :created_at],
        :include => {
            :wizardOptions => {
                    :except => [:updated_at, :created_at]
                }
           }
    )
  end
end
