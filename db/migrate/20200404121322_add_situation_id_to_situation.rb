class AddSituationIdToSituation < ActiveRecord::Migration[6.0]
  def change
    add_column :situations, :situation_id, :integer
  end
end
