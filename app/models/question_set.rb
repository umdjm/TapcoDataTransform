class QuestionSet < ActiveRecord::Base
  attr_accessible :questionSetID
  has_many :questions

  def self.output_json
    QuestionSet.all.to_json(
        :except => [:updated_at, :created_at],
        :include => {
            :questions => {
                    :except => [:updated_at, :created_at]
                }
           }
    )
  end
end
