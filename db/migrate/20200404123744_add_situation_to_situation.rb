class AddSituationToSituation < ActiveRecord::Migration[6.0]
  def change
    add_column :situations, :situation, :string
  end
end
