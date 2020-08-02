class ChangeRecordsGoalsId < ActiveRecord::Migration[6.0]
  def change
    rename_column :records, :goals_id, :goal_id
  end
end
