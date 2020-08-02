class AddStreakToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :streak, :integer
  end
end
