class AddSituationIdToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :situation_id, :integer
  end
end
