class WizardOption < ActiveRecord::Base
  attr_accessible :image_path, :next_wizard_id, :questionSet_id, :title, :wizard_id, :fieldname
  belongs_to :wizard

  belongs_to :questionSet, :class_name => "QuestionSet"
  belongs_to :next_wizard, :class_name => "Wizard"
end
