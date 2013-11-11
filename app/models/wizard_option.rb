class WizardOption < ActiveRecord::Base
  attr_accessible :image_path, :next_wizard_id, :questionSet_id, :title, :wizard_id, :fieldname
  belongs_to :wizard

  amoeba do
    enable
    clone [:next_wizard]
  end

  def clone_question_set
     if !this.questionSet.nil?
       qs = self.questionSet.amoeba_dup
       qs.save
       self.questionSet_id = qs.id
       self.save
     end
  end

  def self.clone_new_question_sets(startID)
    WizardOption.where('"wizard_options"."questionSet_id" is not null and id >= ' + startID.to_s).each do |option|
      option.clone_question_set
    end
  end

  def self.set_next_wizard
    WizardOption.all.each do |option|
      if(!option.next_wizard_id.nil?)
        next_w = option.next_wizard
        next_w.wizard_option_id = option.id
        next_w.save
      end
    end

  end

  belongs_to :questionSet, :class_name => "QuestionSet"
  has_one :next_wizard, :class_name => "Wizard"
end
