class RenameSituationColumnToSituations < ActiveRecord::Migration[6.0]
  def change
    rename_column :situations, :situation, :body
  end
end
