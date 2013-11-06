class Wizard < ActiveRecord::Base
  attr_accessible :level, :title, :fieldname
  has_many :wizardOptions
  belongs_to :brand

  def self.output_json
    Wizard.all.to_json(
        :except => [:updated_at, :created_at],
        :include => {
            :wizardOptions => {
                    :except => [:updated_at, :created_at]
                }
           }
    )
  end
end
