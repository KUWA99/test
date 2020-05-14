class AddAboutToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :about, :text
  end
end
