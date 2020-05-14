class RemoveSituationIdFromQuestion < ActiveRecord::Migration[6.0]
  def change

    remove_column :questions, :situation_id, :integer
  end
end
