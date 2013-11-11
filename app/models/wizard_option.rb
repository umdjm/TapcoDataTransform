class WizardOption < ActiveRecord::Base
  attr_accessible :image_path, :next_wizard_id, :questionSet_id, :title, :wizard_id, :fieldname
  belongs_to :wizard

  amoeba do
    enable
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
  belongs_to :next_wizard, :class_name => "Wizard"      
end
