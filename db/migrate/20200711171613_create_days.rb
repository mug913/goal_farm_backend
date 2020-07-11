class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.belongs_to :users, null: false, foreign_key: true
      t.string :span
      t.string :event
      t.integer :rating

      t.timestamps
    end
  end
end
