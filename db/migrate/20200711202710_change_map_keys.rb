class ChangeMapKeys < ActiveRecord::Migration[6.0]
  def change
      rename_column :maps, :goals_id, :goal_id
      rename_column :maps, :users_id, :user_id
  end
end
