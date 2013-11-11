class QuestionSet < ActiveRecord::Base
  attr_accessible :questionSetID
  has_many :questions, :order => :orderingcolumn
  belongs_to :wizardOption

  amoeba do
    enable
  end

  def self.output_json
    QuestionSet.order(:id).to_json(
        :except => [:updated_at, :created_at],
        :include => {
            :questions => {
                    :except => [:updated_at, :created_at]
                }
           }
    )
  end
end
