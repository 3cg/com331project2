class ChangeDatetimeToBeIntergerInComplaint < ActiveRecord::Migration[5.2]
  def change
    change_column :complaints, :date, :integer
  end
end
