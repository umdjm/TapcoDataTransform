class Question < ActiveRecord::Base
  attr_accessible :required, :answerOptions, :answerType, :questionText, :question_set_id, :fieldname, :image_path, :orderingcolumn
  belongs_to "QuestionSet", class_name: "QuestionSet", foreign_key: :question_set_id

  after_initialize do
    if self.new_record?
      self.required = true
    end
  end
end
