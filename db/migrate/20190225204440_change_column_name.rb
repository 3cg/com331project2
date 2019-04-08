class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :complaints, :type, :department
  end
end
