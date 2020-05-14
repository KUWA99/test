class RemoveSituationIdFromSituation < ActiveRecord::Migration[6.0]
  def change

    remove_column :situations, :situation_id, :integer
  end
end
