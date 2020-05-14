class CreateQuestionSituations < ActiveRecord::Migration[6.0]
  def change
    create_table :question_situations do |t|
      t.references :question, null: false, foreign_key: true
      t.references :situation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
