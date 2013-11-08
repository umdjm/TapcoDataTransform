class ChangeQuestionLength < ActiveRecord::Migration
  def up
     change_column :questions, :answerOptions, :string, :limit => 10000
  end

  def down
  end
end
