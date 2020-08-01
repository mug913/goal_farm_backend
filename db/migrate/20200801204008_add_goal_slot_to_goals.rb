class AddGoalSlotToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :goal_slot, :integer
  end
end
