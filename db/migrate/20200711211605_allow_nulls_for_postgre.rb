class AllowNullsForPostgre < ActiveRecord::Migration[6.0]
  def change
    change_column :maps, :goal_id, :bigint, :null => true
    change_column :maps, :user_id, :bigint, :null => true
    change_column :days, :user_id, :bigint, :null => true
  
  end
end
