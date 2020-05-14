class CreateComment1s < ActiveRecord::Migration[6.0]
  def change
    create_table :comment1s do |t|
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
