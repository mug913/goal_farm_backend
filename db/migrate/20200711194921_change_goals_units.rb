class ChangeGoalsUnits < ActiveRecord::Migration[6.0]
  def change
      remove_column :goals, :units
      add_column :goals, :units, :json
  end
end
