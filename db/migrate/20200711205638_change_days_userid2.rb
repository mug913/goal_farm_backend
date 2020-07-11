class ChangeDaysUserid2 < ActiveRecord::Migration[6.0]
  def change
    rename_column :days, :users_id, :user_id
  end
end
