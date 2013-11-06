class CreateQuestionSets < ActiveRecord::Migration
  def change
    create_table :question_sets do |t|
      t.integer :questionSetID

      t.timestamps
    end
  end
end
