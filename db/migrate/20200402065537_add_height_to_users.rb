class AddHeightToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :height, :float
  end
end
