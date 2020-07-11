class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.belongs_to :goals, null: false, foreign_key: true
      t.belongs_to :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
