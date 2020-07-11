class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :target
      t.date :last_click
      t.integer :level
      t.string :units

      t.timestamps
    end
  end
end
