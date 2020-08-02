class AddUserIdToGoals < ActiveRecord::Migration[6.0]
  def change
    add_reference :goals, :user, index: true
    add_foreign_key :goals, :users
  end
end
