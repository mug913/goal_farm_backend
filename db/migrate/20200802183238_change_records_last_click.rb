class ChangeRecordsLastClick < ActiveRecord::Migration[6.0]
  def change
    rename_column :records, :last_click, :record_date
  end
end
