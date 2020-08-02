class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
        t.belongs_to :goals, null: false, foreign_key: true
        t.date :last_click
        t.integer :level
        t.string :units
    end
  end
end
