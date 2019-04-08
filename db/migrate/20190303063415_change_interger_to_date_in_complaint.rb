class ChangeIntergerToDateInComplaint < ActiveRecord::Migration[5.2]
  def change
    change_column :complaints, :date, :date
  end
end
