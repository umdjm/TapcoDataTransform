class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :question_set_id
      t.string :questionText
      t.string :answerType
      t.string :answerOptions

      t.timestamps
    end
  end
end
