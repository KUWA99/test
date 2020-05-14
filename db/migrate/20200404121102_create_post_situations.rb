class CreatePostSituations < ActiveRecord::Migration[6.0]
  def change
    create_table :post_situations do |t|
      t.references :post, null: false, foreign_key: true
      t.references :situation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
