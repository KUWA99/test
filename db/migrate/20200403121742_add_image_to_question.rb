class AddImageToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :image, :string
  end
end
